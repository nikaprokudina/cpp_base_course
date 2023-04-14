#pragma once

#include <string>
#include <string_view>
#include <vector>

class UnixPath {
public:
    explicit UnixPath(std::string_view initial_dir);

    void ChangeDirectory(std::string_view path);

    std::string GetAbsolutePath() const;
    std::string GetRelativePath() const;

private:
    static std::vector<std::string> Razdelenie(std::string_view path);
    std::vector<std::string> Normalise(const std::vector<std::string>& path);
    std::vector<std::string> initial_dir_;
    std::vector<std::string> current_dir_;
};