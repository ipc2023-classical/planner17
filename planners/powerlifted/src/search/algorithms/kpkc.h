/*
 * This library can be found at: https://github.com/kliem/KPartiteKClique
 * And is licensed under GPU General Public License v3.0
 *
 * Changes: Formatting
 */

#ifndef KPartiteKClique_header
#define KPartiteKClique_header

#include <algorithm>
#include <cassert>
#include <cstdint>
#include <stdexcept>
#include <vector>

// namespace k-partite-k-clicque
namespace kpkc
{
    inline uint64_t one_set_bit(int n) { return ((uint64_t) 1) << (n % 64); }

    class Bitset;

    class Bitset
    {
      public:
        Bitset() = default;
        Bitset(int n_vertices, bool fill = false);
        Bitset(const bool* set_bits, int n_vertices);
        Bitset(const Bitset&) = delete;
        Bitset(Bitset&&) = default;
        Bitset& operator=(const Bitset&) = delete;
        Bitset& operator=(Bitset&&) = default;

        inline void unset(int index) { data[index / 64] &= ~one_set_bit(index % 64); }

        inline bool has(int index) const { return data[index / 64] & one_set_bit(index % 64); }

        void set(int index);
        int intersection_count(const Bitset& r, int start, int stop) const;
        int count(int start, int stop) const;
        int first(int start) const;
        void intersection_assign(const Bitset& l, const Bitset& r);

      protected:
        std::vector<uint64_t> data;
        int limbs { 0 };
        void allocate(int n_vertices);
        inline uint64_t& operator[](int i) { return data[i]; }
        inline const uint64_t& operator[](int i) const { return data[i]; }
    };

    class KPartiteKClique
    {
        class Vertex_template;
        class Vertex;
        class KPartiteGraph;

      public:
        KPartiteKClique(const bool* const* incidences, const int n_vertices, const int* first_per_part, const int k, const int prec_depth = 5);
        virtual ~KPartiteKClique() = default;
        inline const int* k_clique() const { return _k_clique.data(); }
        bool next();

        KPartiteKClique(const KPartiteKClique&) = delete;
        KPartiteKClique& operator=(const KPartiteKClique&) = delete;

      private:
        std::vector<int> _k_clique;
        std::vector<int> parts;
        int k;
        int current_depth;
        int n_vertices;
        int prec_depth;
        std::vector<Vertex_template> all_vertices;
        std::vector<KPartiteGraph> recursive_graphs;
        inline KPartiteGraph* current_graph() { return &(recursive_graphs[current_depth]); }
        inline KPartiteGraph* next_graph() { return &(recursive_graphs[current_depth + 1]); }
        bool backtrack();
        void finish_init();
    };

    class KPartiteKClique::Vertex_template
    {
        // Takes care of the memory allocation for vertices.

        friend KPartiteKClique;
        friend KPartiteKClique::Vertex;

        inline friend void intersection(Bitset& c, const Vertex_template& l, const Bitset& r) { c.intersection_assign(l.bitset, r); }

      public:
        int index;  // The index in the original graph.
        int part;   // The part in the orginal graph.

        Vertex_template(const Vertex_template&) = delete;
        Vertex_template& operator=(const Vertex_template&) = delete;
        Vertex_template(Vertex_template&&) = default;
        Vertex_template& operator=(Vertex_template&&) = default;
        Vertex_template(KPartiteKClique* problem, const bool* incidences, int n_vertices, int part, int index);

      private:
        Bitset bitset;
        KPartiteKClique* problem;
    };

    class KPartiteKClique::KPartiteGraph
    {
      public:
        Bitset active_vertices;
        std::vector<int> part_sizes;
        std::vector<Vertex> vertices;
        KPartiteGraph() = default;
        KPartiteGraph(KPartiteKClique* problem, bool fill);

        bool permits_another_choice() const;
        bool select(KPartiteGraph* next);
        bool select();

        // kpkc
        Vertex* last_vertex();
        void pop_last_vertex();
        bool set_weights();

        // FindClique
        int selected_part;
        bool set_part_sizes();
        inline int count(int start, int stop) const { return active_vertices.count(start, stop); }
        inline int count(int part) const { return count(get_parts()[part], get_parts()[part + 1]); }
        int first(int part) const;
        void pop_vertex(int part, int vertex);

        KPartiteGraph(const KPartiteGraph&) = delete;
        KPartiteGraph& operator=(const KPartiteGraph&) = delete;
        KPartiteGraph(KPartiteGraph&&) = default;
        KPartiteGraph& operator=(KPartiteGraph&&) = default;

      private:
        const int* get_parts() const
        {
            assert(problem);
            return problem->parts.data();
        }
        const int get_k() const
        {
            assert(problem);
            return problem->k;
        }
        inline KPartiteKClique::KPartiteGraph* current_graph() { return problem->current_graph(); }
        inline KPartiteKClique::KPartiteGraph* next_graph() { return problem->next_graph(); }
        KPartiteKClique* problem { nullptr };
    };

    inline KPartiteKClique::Vertex* KPartiteKClique::KPartiteGraph::last_vertex() { return NULL; }

    inline void KPartiteKClique::KPartiteGraph::pop_last_vertex() {}

    inline bool KPartiteKClique::KPartiteGraph::set_weights() { return false; }

    class KPartiteKClique::Vertex
    {
    };

    inline int KPartiteKClique::KPartiteGraph::first(int part) const
    {
        int the_first = active_vertices.first(get_parts()[part]);
        return (the_first < get_parts()[part + 1]) ? the_first : -1;
    }

    inline void KPartiteKClique::KPartiteGraph::pop_vertex(int part, int vertex)
    {
        active_vertices.unset(vertex);
        part_sizes[part] -= 1;
    }

    inline bool KPartiteKClique::KPartiteGraph::set_part_sizes()
    {
        /*
        Set the sizes of the parts.

        Return false, if any part has size 0, otherwise true
        */
        int i;
        int min_so_far = problem->n_vertices;
        selected_part = -1;
        for (i = 0; i < problem->k; i++)
        {
            if (part_sizes[i] != 1)
            {
                int j = count(i);
                part_sizes[i] = j;
                if (j == 0)
                {
                    // this part is empty; need to backtrack
                    selected_part = -2;
                    return false;
                }
                if (j == 1)
                {
                    // this part has a unique choice
                    selected_part = i;
                    return true;
                }
                else if (j < min_so_far)
                {
                    min_so_far = j;
                    selected_part = i;
                }
            }
        }
        return true;
    }

    inline bool KPartiteKClique::KPartiteGraph::permits_another_choice() const { return ((selected_part >= 0) && (part_sizes[selected_part])); }
}  // namespace kpkc

#endif
