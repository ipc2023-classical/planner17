#ifndef VARIABLE_INT_H
#define VARIABLE_INT_H

#include "../ext/boost/dynamic_bitset.hpp"

#include <math.h>

// TODO include this class in the namespace
class VarInt {

    boost::dynamic_bitset<> value;
    
    void shrink_to_fit() {
        for (size_t i = std::max(0,(int)value.size() - 1); i > 0; --i){
            if (value[i]){
                value.resize(i + 1);
                return;
            }
        }
        value.resize(1);
    }
    
public:
    
    VarInt() {}
    
    VarInt(size_t v);
    
    VarInt(const VarInt &other) : value(other.value) {}
    
    ~VarInt() = default;

    bool operator<(const VarInt &other) const {
        if (value.size() > other.value.size()){
            return false;
        }
        if (value.size() < other.value.size()){
            return true;
        }
        for (int i = value.size() - 1; i >= 0; --i){
            if (!value[i] && other.value[i]){
                return true;
            } else if (value[i] && !other.value[i]){
                return false;
            }
        }
        return false;
    }
    
    bool operator<=(const VarInt &other) const {
        if (value.size() > other.value.size()){
            return false;
        }
        if (value.size() < other.value.size()){
            return true;
        }
        for (int i = value.size() - 1; i >= 0; --i){
            if (!value[i] && other.value[i]){
                return true;
            } else if (value[i] && !other.value[i]){
                return false;
            }
        }
        return true;
    }
    
    bool operator>(const VarInt &other) const {
        return !(*this <= other);
    }
    
    bool operator>=(const VarInt &other) const {
        return !(*this < other);
    }

    void operator*=(const VarInt &other);
    
    VarInt operator*(const VarInt &other) const;

    void operator/=(const VarInt &other);

    VarInt operator/(const VarInt &other) const;
    
    VarInt& operator=(const VarInt &other) {
        if(&other == this){
            return *this;
        }
        value = other.value;
        return *this;
    }

    std::size_t count() const {
        return value.count();
    }
    
    void dump_number() const;
    
};

#endif
 
