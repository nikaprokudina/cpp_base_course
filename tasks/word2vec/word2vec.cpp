#include <vector>
#include "word2vec.h"

std::vector<std::string> FindClosestWords(const std::vector<std::string> &words,
                                          const std::vector<std::vector<int>> &vectors) {

    std::vector<int64_t> scalars;
    std::vector<std::string> result;

    size_t index = 0;
    const int64_t maxim = -9999999999;
    int64_t max_scalar = maxim;
    int64_t tmp_scalar = 0;

    if (!vectors.empty() && !words.empty()) {
        std::string first_word = words[0];
        std::vector<int> first_vectors = vectors[0];

        for (const auto &vect : vectors) {
            for (size_t i = 0; i < first_vectors.size(); i++) {
                tmp_scalar += static_cast<int64_t>(first_vectors[i]) * static_cast<int64_t>(vect[i]);
            }

            scalars.push_back(tmp_scalar);
            if (tmp_scalar > max_scalar && index > 0 && words[index] != first_word) {
                max_scalar = tmp_scalar;
            }
            index++;
            tmp_scalar = 0;
        }

        index = 0;
        for (const auto &s : scalars) {
            if (s == max_scalar and index != 0) {
                result.push_back(words[index]);
            }
            index++;
        }
    }
    return result;
}