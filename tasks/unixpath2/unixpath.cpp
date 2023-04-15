#include "unixpath.h"

std::vector<std::string> UnixPath::Razdelenie(std::string_view path) {
    std::vector<std::string> answ;
    std::string current_dir{path};
    size_t start = 0;
    size_t end = 0;
    size_t razmer = current_dir.size();
    for (size_t i = 0; i < razmer; ++i) {
        char place = (i < razmer) ? current_dir.at(i) : '\0';
        if (place == '/') {
            if (i == razmer - 1) {
                answ.push_back("/");
                if (i > 0) {
                    answ.push_back(current_dir.substr(start, i - start));
                }
            } else if (i < razmer - 1) {
                end = i;
                if (i > 0) {
                    answ.push_back(current_dir.substr(start, end - start));
                }
                start = i;
            }
        } else if (i == razmer - 1) {
            end = i + 1;
            if (i > 0) {
                answ.push_back(current_dir.substr(start, end - start));
            }
            start = i;
        }
    }
    return answ;
}

std::vector<std::string> UnixPath::Normalise(const std::vector<std::string>& path) {
    std::vector<std::string> answ_normalised;
    for (const auto& current_dir : path) {
        if (!answ_normalised.empty() && (current_dir == "/.." || current_dir == "..")) {
            if (answ_normalised.back() != "/..") {
                answ_normalised.pop_back();
            }
        } else if (current_dir != "." && current_dir != "/." && current_dir != "/") {
            answ_normalised.push_back(current_dir);
        }
    }
    return answ_normalised;
}

UnixPath::UnixPath(std::string_view initial_dir) {
    initial_dir_ = Normalise(Razdelenie(initial_dir));
    current_dir_ = Normalise(Razdelenie(initial_dir));
}

void UnixPath::ChangeDirectory(std::string_view path) {
    std::vector<std::string> vector = Normalise(Razdelenie(path));
    if (!path.empty() && path[0] == '/') {
        current_dir_ = vector;
    } else {
        for (auto it = vector.begin(); it != vector.end(); ++it) {
            current_dir_.push_back(*it);
        }
        current_dir_ = Normalise(current_dir_);
    }
}

std::string UnixPath::GetAbsolutePath() const {
    std::string answ;
    for (size_t i = 0; i < current_dir_.size(); i++) {
        if (current_dir_[i] != "/..") {
            answ += current_dir_[i];
        }
    }
    return answ;
}

std::string UnixPath::GetRelativePath() const {
    std::string answ;
    if (initial_dir_[0] != current_dir_[0]) {
        answ += "..";
        for (auto it = current_dir_.begin(); it != current_dir_.end(); ++it) {
            answ += *it;
        }
        return answ;
    }

    size_t level = 0;
    for (; level < current_dir_.size() && level < initial_dir_.size(); ++level) {
        if (current_dir_[level] != initial_dir_[level]) {
            break;
        }
    }

    if (level == initial_dir_.size()) {
        answ += '.';
        for (size_t i = level; i < current_dir_.size(); ++i) {
            answ += current_dir_[i];
        }
        return answ;
    }

    answ += "..";
    for (size_t i = 0; i < level - 1; ++i) {
        answ += "/..";
    }
    for (size_t i = level; i < current_dir_.size(); ++i) {
        answ += current_dir_[i];
        if (i < current_dir_.size() - 1) {
            answ += '/';
        }
    }
    return answ;
}