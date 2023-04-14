#include "scorer.h"

void Scorer::OnCheckFailed(const StudentName& student_name, const TaskName& task_name) {
    if (students_[student_name][task_name].empty()) {
        students_[student_name][task_name].push_back(false);
    } else {
        students_[student_name][task_name][0] = false;
    }
}

void Scorer::OnCheckSuccess(const StudentName& student_name, const TaskName& task_name) {
    if (students_[student_name][task_name].empty()) {
        students_[student_name][task_name].push_back(true);
    } else {
        students_[student_name][task_name][0] = true;
    }
}

void Scorer::OnMergeRequestOpen(const StudentName& student_name, const TaskName& task_name) {
    if (students_[student_name][task_name].empty()) {
        students_[student_name][task_name].push_back(false);
        students_[student_name][task_name].push_back(false);
    } else if (students_[student_name][task_name].size() == 1) {
        students_[student_name][task_name].push_back(false);
    } else {
        students_[student_name][task_name][1] = false;
    }
}

void Scorer::OnMergeRequestClosed(const StudentName& student_name, const TaskName& task_name) {
    if (students_[student_name][task_name].empty()) {
        students_[student_name][task_name].push_back(false);
        students_[student_name][task_name].push_back(true);
    } else if (students_[student_name][task_name].size() == 1) {
        students_[student_name][task_name].push_back(true);
    } else {
        students_[student_name][task_name][1] = true;
    }
}

void Scorer::Reset() {
    students_.clear();
}

ScoreTable Scorer::GetScoreTable() const {
    ScoreTable answer;
    answer.clear();
    if (!students_.empty()) {
        for (const auto& stname : students_) {
            for (const auto& taname : stname.second) {
                std::vector vecc = taname.second;
                if (vecc.size() == 1) {
                    if (vecc[0]) {
                        answer[stname.first].insert(taname.first);
                    }
                } else if (vecc[0] && vecc[1]) {
                    answer[stname.first].insert(taname.first);
                }
            }
        }
    }
    return answer;
}
