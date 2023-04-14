#include "tests_checking.h"
#include <deque>
#include <iostream>

std::vector<std::string> StudentsOrder(const std::vector<StudentAction>& student_actions,
                                       const std::vector<size_t>& queries) {
    std::deque<std::string> works;
    std::vector<std::string> answer;

    for (auto const& i : student_actions) {
        if (i.side == Side::Bottom) {
            works.push_back(i.name);
        } else {
            works.push_front(i.name);
        }
    }

    for (auto const& p : queries) {
        answer.push_back(works[p - 1]);
    }

    return {answer};
}
