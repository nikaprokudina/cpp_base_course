#include "scorer.h"
#include <algorithm>
#include <vector>
#include <map>

bool CompareTime(Event& event1, Event& event2) {
    if (event1.time < event2.time) {
        return true;
    }
    return false;
}

ScoreTable GetScoredStudents(const Events& events, time_t score_time) {
    std::map<StudentName, std::map<TaskName, Events>> students_map;
    for (const auto& s : events) {
        std::string student_name = s.student_name;
        std::string task_name = s.task_name;

        if (!students_map.count(student_name)) {
            students_map[student_name] = {};
        }
        if (!students_map[student_name].count(task_name)) {
            students_map[student_name][task_name] = {};
        }
        students_map[student_name][task_name].push_back(s);
    }

    ScoreTable answer;
    for (const auto& p : students_map) {
        for (auto m : p.second) {
            if (m.second.size() > 1) {
                std::sort(m.second.begin(), m.second.end(), CompareTime);
            }
            std::vector<EventType> submissions;
            for (const auto& t : m.second) {
                if (t.time <= score_time) {
                    submissions.push_back(t.event_type);
                }
            }
            bool success = false;
            bool closedmerge = true;
            if (!submissions.empty()) {
                for (size_t i = 0; i < submissions.size(); ++i) {
                    if (submissions[i] == EventType::MergeRequestOpen) {
                        closedmerge = false;
                    }
                    if (submissions[i] == EventType::MergeRequestClosed) {
                        closedmerge = true;
                    }
                    if (submissions[i] == EventType::CheckSuccess) {
                        success = true;
                    }
                    if (submissions[i] == EventType::CheckFailed) {
                        success = false;
                    }
                }
            }
            if (success && closedmerge) {
                answer[p.first].insert(m.first);
            }
        }
    }
    return answer;
}