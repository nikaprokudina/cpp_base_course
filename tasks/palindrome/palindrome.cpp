#include "palindrome.h"

bool IsPalindrome(const std::string& str) {
    size_t lena = str.size();
    std::string s;
    for (int i = 0; i < lena; ++i) {
        if (str[i] != ' ') {
            s += str[i];
        }
    }
    size_t lenb = s.size();
    for (size_t j = 0; j < lenb / 2; ++j) {
        if (s[j] != s[lenb - j - 1]) {
            return false;
        }
    }
    return true;
}