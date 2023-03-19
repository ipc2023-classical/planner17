/*
 * This library can be found at: https://github.com/kliem/KPartiteKClique
 * And is licensed under GPU General Public License v3.0
 *
 * Changes: Formatting, remove interrupt related code, remove popcnt optimization.
 */

#include "kpkc.h"

#include <iostream>
#include <stdlib.h>

using namespace std;

namespace kpkc
{
    // Bitset helpers.

    int popcount(uint64_t i)
    {
        i = i - ((i >> 1) & 0x5555555555555555ULL);
        i = (i & 0x3333333333333333ULL) + ((i >> 2) & 0x3333333333333333ULL);
        return (((i + (i >> 4)) & 0x0f0f0f0f0f0f0f0fULL) * 0x0101010101010101ULL) >> 56;
    }

    uint64_t lower_n_bits(int n) { return ((uint64_t) -1) >> (64 - n); }

    int first_in_limb(uint64_t i)
    {
        // Return the position of the first bit.
        //
        // Assumes that ``i`` is nonzero.
        int output = 63;
        (i & 0x00000000FFFFFFFF) ? output -= 32 : (i >>= 32);
        (i & 0x000000000000FFFF) ? output -= 16 : (i >>= 16);
        (i & 0x00000000000000FF) ? output -= 8 : (i >>= 8);
        (i & 0x000000000000000F) ? output -= 4 : (i >>= 4);
        (i & 0x0000000000000003) ? output -= 2 : (i >>= 2);
        if (i & 0x0000000000000001)
            output -= 1;
        return output;
    }

    // Bitsets

    Bitset::Bitset(int n_vertices, bool fill)
    {
        /*
        Initalize bitset.

        Fill if ``fill``.
        */
        allocate(n_vertices);
        if (!fill)
            return;

        // Fill.
        for (int i = 0; i < n_vertices / 64; i++)
        {
            data[i] = -1;
        }
        // Remove trailing bits.
        if (n_vertices % 64)
            data[n_vertices / 64] = lower_n_bits(n_vertices % 64);
    }

    Bitset::Bitset(const bool* set_bits, int n_vertices)
    {
        /*
        Initialize bitset with the given bits.
        */
        allocate(n_vertices);

        for (int i = 0; i < (n_vertices - 1) / 64 + 1; i++)
            data[i] = 0;

        for (int i = 0; i < n_vertices; i++)
        {
            if (set_bits[i])
                set(i);
        }
    }

    void Bitset::intersection_assign(const Bitset& l, const Bitset& r)
    {
        // Assumes all of same length.
        for (int i = 0; i < limbs; i++)
            data[i] = l[i] & r[i];
    }

    int Bitset::intersection_count(const Bitset& r, int start, int stop) const
    {
        /*
        Count the number of set bits in ``this & r``
        in ``range(start, stop)``.
        */
        int counter = 0;
        // The easy part, count any complete ``uint64_t``.
        for (int i = start / 64 + 1; i < stop / 64; i++)
            counter += popcount(data[i] & r[i]);

        uint64_t start_limb = data[start / 64] & r[start / 64];
        if (start % 64)
            // Remove the lower bits.
            start_limb &= ~lower_n_bits(start % 64);

        if (stop % 64 == 0)
            return counter + popcount(start_limb);

        uint64_t end_limb = 0;
        if (stop / 64 < limbs)
        {
            end_limb = data[stop / 64] & r[stop / 64];
            // Remove the upper bits.
            end_limb &= lower_n_bits(stop % 64);
        }

        if (start / 64 == stop / 64)
        {
            // The start limb is the end limb.
            counter += popcount(start_limb & end_limb);
        }
        else
        {
            if (stop / 64 < limbs)
            {
                counter += popcount(start_limb) + popcount(end_limb);
            }
            else
            {
                // There is no end limb.
                counter += popcount(start_limb);
            }
        }
        return counter;
    }

    int Bitset::count(int start, int stop) const
    {
        /*
        Count the number of set bits in ``this``
        in ``range(start, stop)``.
        */
        int counter = 0;
        // The easy part, count any complete ``uint64_t``.
        for (int i = start / 64 + 1; i < stop / 64; i++)
            counter += popcount(data[i]);

        uint64_t start_limb = data[start / 64];
        if (start % 64)
            // Remove the lower bits.
            start_limb &= ~lower_n_bits(start % 64);

        if (stop % 64 == 0)
            return counter + popcount(start_limb);

        uint64_t end_limb = 0;
        if (stop / 64 < limbs)
        {
            end_limb = data[stop / 64];
            // Remove the upper bits.
            end_limb &= lower_n_bits(stop % 64);
        }

        if (start / 64 == stop / 64)
        {
            // The start limb is the end limb.
            counter += popcount(start_limb & end_limb);
        }
        else
        {
            if (stop / 64 < limbs)
            {
                counter += popcount(start_limb) + popcount(end_limb);
            }
            else
            {
                // There is no end limb.
                counter += popcount(start_limb);
            }
        }
        return counter;
    }

    int Bitset::first(int start) const
    {
        /*
        Return the first bit in ``this``
        in ``range(start, stop)``.

        It assumes that the range is valid and that there is at least on non-zero bit.
        */
        uint64_t start_limb = data[start / 64];
        if (start % 64)
            // Remove the lower bits.
            start_limb &= ~lower_n_bits(start % 64);

        int counter = (start / 64) * 64;
        if (start_limb)
            return counter + first_in_limb(start_limb);
        else
            counter += 64;

        // The easy part, count any complete ``uint64_t``.
        for (int i = start / 64 + 1; i < limbs; i++)
        {
            if (data[i])
                return counter + first_in_limb(data[i]);
            else
                counter += 64;
        }

        return limbs * 64;
    }

    void Bitset::set(int index) { data[index / 64] |= one_set_bit(index % 64); }

    void Bitset::allocate(int n_vertices)
    {
        limbs = ((n_vertices - 1) / 64 + 1);
        data.resize(limbs);
    }

    // KPartiteKClique

    KPartiteKClique::KPartiteKClique(const bool* const* incidences, const int n_vertices, const int* first_per_part, const int k, const int prec_depth)
    {
        if (k <= 0)
            throw invalid_argument("k must be at least 1");

        current_depth = 0;

        _k_clique = vector<int>(k);
        parts = vector<int>(k + 1);
        for (int i = 0; i < k; i++)
        {
            parts[i] = first_per_part[i];
        }
        parts[k] = n_vertices;

        for (int i = 0; i < k; i++)
        {
            if (parts[i + 1] - parts[i] == 0)
            {
                throw invalid_argument("parts may not be empty");
            }
        }

        this->n_vertices = n_vertices;
        this->k = k;

        // use clear to preserve capacity
        all_vertices.clear();
        int current_part = 0;
        for (int i = 0; i < n_vertices; i++)
        {
            while ((current_part < k - 1) && (i >= parts[current_part + 1]))
            {
                current_part += 1;
            }

            all_vertices.push_back(Vertex_template(this, incidences[i], n_vertices, current_part, i));
        }

        this->prec_depth = prec_depth;

        recursive_graphs = vector<KPartiteGraph>();
        for (int i = 0; i < k; i++)
        {
            recursive_graphs.push_back(KPartiteGraph(this, i == 0));
        }

        finish_init();
    }

    void KPartiteKClique::finish_init()
    {
        // Take care of trivial parts.
        // ``set_part_sizes`` assumes that parts of size 1 were selected
        // already, which would not be the case, if the part is 1 to start
        // with.
        for (int i = 0; i < k; i++)
        {
            if (parts[i + 1] - parts[i] == 1)
                current_graph()->part_sizes[i] = 2;
        }

        recursive_graphs.front().set_part_sizes();
    }

    bool KPartiteKClique::next()
    {
        /*
        Set the next clique.
        Return whether there is a next clique.
        */

        while (true)
        {
            if (current_depth < k - 1)
            {
                if (!current_graph()->select(next_graph()))
                {
                    if (!backtrack())
                    {
                        // Out of options.
                        return false;
                    }
                }
            }
            else
            {
                if (!current_graph()->select())
                {
                    if (!backtrack())
                    {
                        // Out of options.
                        return false;
                    }
                }
                else
                {
                    return true;
                }
            }
        }
    }

    // Vertex_template

    KPartiteKClique::Vertex_template::Vertex_template(KPartiteKClique* problem, const bool* incidences, int n_vertices, int part, int index)
    {
        bitset = Bitset(incidences, n_vertices);
        this->part = part;
        this->index = index;
        this->problem = problem;

        // Set each vertex adjacent to itself.
        // This is important, so that after selecting a vertex
        // the corresponding part will have one ``active_vertex``.
        bitset.set(index);
    }

    // KPartiteGraph

    KPartiteKClique::KPartiteGraph::KPartiteGraph(KPartiteKClique* problem, bool fill)
    {
        vertices = vector<Vertex>();
        active_vertices = Bitset(problem->n_vertices, fill);
        part_sizes = vector<int>(problem->k + 1);
        for (int i = 0; i < problem->k; i++)
        {
            part_sizes[i] = problem->parts[i + 1] - problem->parts[i];
        }
        this->problem = problem;
    }

    bool KPartiteKClique::KPartiteGraph::select(KPartiteGraph* next)
    {
        /*
        Select the first vertex in the smallest part.
        Return false, if there are no vertices left.
        */
        assert(selected_part != -1);  // Should not be called, if we found a clique already.
        if (!part_sizes[selected_part])
            return false;

        // Copy the current sizes.
        for (int i = 0; i < get_k(); i++)
            next->part_sizes[i] = part_sizes[i];

        next->part_sizes[selected_part] = 1;

        // Select v.
        int v = first(selected_part);
        if (v == -1)
            return false;

        problem->_k_clique[selected_part] = v;
        intersection(next->active_vertices, problem->all_vertices[v], active_vertices);

        // v may no longer be selected on the next call.
        pop_vertex(selected_part, v);

        // Raise the current
        // depth, such that the
        // parts get set
        // accordingly.
        problem->current_depth += 1;

        return next->set_part_sizes();
    }

    bool KPartiteKClique::KPartiteGraph::select()
    {
        /*
        Select the first vertex in the smallest part.
        Return false, if there are no vertices left.

        It is assumed that there is no next graph.
        */
        assert(selected_part != -1);  // Should not be called, if we found a clique already.
        assert(problem->current_depth == problem->k - 1);
        if (!part_sizes[selected_part])
            return false;

        // Select v.
        int v = first(selected_part);
        if (v == -1)
            return false;

        problem->_k_clique[selected_part] = v;

        // v may no longer be selected on the next call.
        pop_vertex(selected_part, v);

        return true;
    }

    bool KPartiteKClique::backtrack()
    {
        /*
        Go the the last valid graph.

        If none exists, return false.
        */
        while (current_depth >= 1)
        {
            current_depth -= 1;
            if (current_graph()->permits_another_choice())
                return true;
        }
        return false;
    }
}  // namespace kpkc
