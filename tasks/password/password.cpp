#include "password.h"
#include <cctype>

bool ValidatePassword(const std::string& password) {
    size_t lena = password.size();
    const size_t minlen = 8;
    const size_t maxlen = 14;
    if (lena < minlen || lena > maxlen) {
        return false;
    }
    int big = 0;
    int low = 0;
    int num = 0;
    int syb = 0;

    for (size_t i = 0; i < lena; ++i) {
        size_t ascii = password[i];
        const size_t minznak = 33;
        const size_t maxznak = 126;
        if (ascii < minznak || ascii > maxznak) {
            return false;
        }
        if (islower(password[i])) {
            low = 1;
        } else if (isupper(password[i])) {
            big = 1;
        } else if (isdigit(password[i])) {
            num = 1;
        } else {
            syb = 1;
        }
    }
    if ((big + low + num + syb) < 3) {
        return false;
    }
    return true;
}