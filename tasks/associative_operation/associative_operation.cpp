#include "associative_operation.h"

bool IsAssociative(const std::vector<std::vector<size_t> >& table) {
    for (size_t xi = 0; xi < table.size(); ++xi) {
        for (size_t yi = 0; yi < table.size(); ++yi) {
            for (size_t zi = 0; zi < table.size(); ++zi) {
                size_t xy = table[xi][yi];
                size_t xyz1 = table[xy][zi];
                size_t yz = table[yi][zi];
                size_t xyz2 = table[xi][yz];
                if (xyz1 != xyz2) {
                    return false;
                }
            }
        }
    }
    return true;
}
