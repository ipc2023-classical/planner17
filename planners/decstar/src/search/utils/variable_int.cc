#include "variable_int.h"

#include <iostream>
#include <math.h>

using namespace std;


VarInt::VarInt(size_t v) {
    if (v == 0){
        return;
    }
    value.resize(log2(v) + 1);
    for (short i = 32; i >= 0; --i){
        if (pow(2, i) <= v){
            value[i] = true;
            v -= pow(2, i);
        }
    }
    assert(v == 0);
    shrink_to_fit();
}

inline boost::dynamic_bitset<> operator+(const boost::dynamic_bitset<> &first, const boost::dynamic_bitset<> &second) {
    boost::dynamic_bitset<> tmp(max(first.size(), second.size()) + 1);
    
    bool carry = false;
    
    for (size_t i = 0; i < max(first.size(), second.size()); ++i){
        if (i >= first.size()){
            tmp[i] = second[i] || carry;
            if (second[i] && carry){
                carry = true;
            } else {
                carry = false;
            }
        } else if (i >= second.size()){
            tmp[i] = first[i] || carry;
            if (first[i] && carry){
                carry = true;
            } else {
                carry = false;
            }
        } else if (carry){
            if (first[i] && second[i]){
                tmp[i] = true;
                carry = true;
            } else {
                tmp[i] = !(first[i] || second[i]);
                carry = first[i] || second[i];
            }
        } else {
            if (first[i] && second[i]){
                carry = true;
            } else {
                tmp[i] = first[i] || second[i];
            }
        }
    }
    
    return tmp;
}

void VarInt::operator*=(const VarInt &other) {
    boost::dynamic_bitset<> tmp(value.size() + other.value.size(), false);
    boost::dynamic_bitset<> oth(other.value);
    oth.resize(tmp.size());
    
    while (value.count() > 0){
        if (value[0]){
            tmp = tmp + oth;
        }
        oth <<= 1;
        value >>= 1;
    }
    
    value = std::move(tmp);
    
    shrink_to_fit();
}

VarInt VarInt::operator*(const VarInt &other) const {
    VarInt tmp(*this);
    tmp *= other;
    return tmp;
}

void VarInt::operator/=(const VarInt &other) {
    boost::dynamic_bitset<> res(value.size(), false);
    boost::dynamic_bitset<> tmp(value.size(), false);
    boost::dynamic_bitset<> oth(other.value);
    oth.resize(tmp.size());

    size_t offset = value.size() - other.value.size();
    oth <<= offset;
    for (size_t i = 0; i < offset; ++i) {
        if (oth <= value) {
            tmp = value - oth;
            res.set(0,1);
            value = tmp;
        }
        tmp <<= 1;
        res <<= 1;

    }
    value = res;

    shrink_to_fit();
}

VarInt VarInt::operator/(const VarInt &other) const {
    VarInt tmp(*this);
    tmp /= other;
    return tmp;
}
    

void VarInt::dump_number() const {
    if (value.size() > 64 || value.count() > 64){
        cout << "number too big to be printed" << endl;
        return;
    }
    uint64_t n = 0;
    for (size_t i = 0; i < value.size(); ++i){
        if (value[i]){
            n += pow(2, i);
        }
    }
    cout << n << endl;
}

