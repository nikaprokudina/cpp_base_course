#include "unixpath.h"
#include <vector>
#include <sstream>
#include <iostream>
#include <string>
#include <string_view>

void CreatStack(std::vector<std::string> &pas_as_stack, std::string_view path);

std::string NormalizePath(std::string_view current_working_dir, std::string_view path) {

    std::string line;
    std::vector<std::string> path_as_stack;

    if (path[0] != '/') {
        CreatStack(path_as_stack, current_working_dir);
        CreatStack(path_as_stack, path);
    } else {
        CreatStack(path_as_stack, path);
    }
    if (!path_as_stack.empty()) {
        for (int p = 0; p < path_as_stack.size(); ++p) {
            line += "/";
            line += path_as_stack[p];
        }
    } else {
        return "/";
    }
    return line;
}

void CreatStack(std::vector<std::string> &pas_as_stack, std::string_view path) {
    std::string current_dir;
    for (const char &t : path) {
        if (t == '/') {
            if (current_dir == "..") {
                if (!pas_as_stack.empty()) {
                    pas_as_stack.pop_back();
                }
            } else if (!current_dir.empty() && current_dir != ".") {
                pas_as_stack.push_back(current_dir);
            }
            current_dir = "";
        } else {
            current_dir += t;
        }
    }

    if (current_dir == "..") {
        if (!pas_as_stack.empty()) {
            pas_as_stack.pop_back();
        }
    } else if (current_dir != "." && !current_dir.empty()) {
        pas_as_stack.push_back(current_dir);
    }
}
