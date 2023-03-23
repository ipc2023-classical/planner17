#ifndef LEAF_STATE_ID_H
#define LEAF_STATE_ID_H

#include <iostream>

// For documentation on classes relevant to storing and working with registered
// states see the file state_registry.h.

struct LeafStateHash {
private:
    size_t val;
public:
    explicit LeafStateHash(size_t value) : val(value) {}
    operator size_t() const {
        return val;
    }
    void operator++() {
        ++val;
    }
    bool operator==(const LeafStateHash other) const {
        return val == other.val;
    }
    static const LeafStateHash MAX;
};

template <>
struct std::hash<LeafStateHash> {
    std::size_t operator()(const LeafStateHash & key) const {
        return key;
    }
};

struct LeafFactorID {
private:
    unsigned short val;
public:
    explicit LeafFactorID(unsigned short value) : val(value) {}
    operator unsigned short() const {
        return val;
    }
    void operator++() {
        ++val;
    }
    bool operator==(const LeafFactorID other) const {
        return val == other.val;
    }
    static const LeafFactorID CENTER;
};


template <>
struct std::hash<LeafFactorID> {
    std::size_t operator()(const LeafFactorID & key) const {
        return key;
    }
};

class LeafStateID {
    friend class StateRegistry;
    friend std::ostream &operator<<(std::ostream &os, LeafStateID id);

    LeafStateHash value;

    LeafFactorID factor;

    // No implementation to prevent default construction
    LeafStateID();

public:

    explicit LeafStateID(LeafStateHash id, LeafFactorID factor)
        : value(id), factor(factor) {
    }

    ~LeafStateID() = default;

    bool operator==(const LeafStateID &other) const {
        return value == other.value;
    }

    bool operator!=(const LeafStateID &other) const {
        return !(*this == other);
    }

    bool operator<(const LeafStateID &other) const {
        return value < other.value;
    }

    LeafStateHash hash() const {
        return value;
    }

    LeafFactorID get_factor() const {
        return factor;
    }


    static const LeafStateID no_state;
};

std::ostream &operator<<(std::ostream &os, const LeafStateID &id);

#endif
