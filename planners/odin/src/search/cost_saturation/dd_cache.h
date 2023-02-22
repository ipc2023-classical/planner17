#ifndef TRANSITION_COST_PARTITIONING_DD_CACHE_H
#define TRANSITION_COST_PARTITIONING_DD_CACHE_H

#include <unordered_map>
#include <vector>

#include <assert.h>

using namespace std;


namespace cost_saturation {

/**
 * The DDCache stores constructed Decision Diagrams to reuse them when necessary.
 */
template <typename T>
class DDCache {
  private:
    /**
     * cache[position[i]] is the DD with identifier i.
     */
    vector<T> cache;
    /**
     * We use perfect hashing because the abstract transitions are unique identified by an indexing function.
     */
    vector<int> position;

  public:
    /**
     * R6: Moveable and not copyable.
     */
    DDCache() = default;
    DDCache(const DDCache &other) = delete;
    DDCache& operator=(const DDCache &other) = delete;
    DDCache(DDCache &&other) = default;
    DDCache& operator=(DDCache &&other) = default;

    /**
     * Reserve space.
     */
    void initialize(int size) {
        position = vector<int>(size, -1);
    }

    /**
     * Clears the cache.
     */
    void uninitialize() {
        vector<T>().swap(cache);
        vector<int>().swap(position);
    }

    /**
     * Check if the DDCache is uninitialized.
     */
    bool is_uninitialized() {
        return position.empty();
    }

    /**
     * Check if there exists a DD with identifier i.
     */
    bool exists(int i) const {
        return (position[i] == -1) ? false : true;
    }

    /**
     * Get the DD with identifier i.
     */
    const T &get(int i) const {
        // should check for existence first
        assert(exists(i));
        return cache[position[i]];
    }

    void insert(int i, T &&dd) {
        // re-inserting is not allowed because this implies a recomputation of known data.
        assert(!exists(i));
        int pos = cache.size();
        cache.emplace_back(dd);
        position[i] = pos;
    }
};

}

#endif
