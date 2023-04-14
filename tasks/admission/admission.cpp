#include "admission.h"
#include <iostream>
#include <algorithm>
#include <tuple>
#include <vector>
#include <math.h>

std::vector<const Applicant*> SortApplicants(const std::vector<Applicant>& applicants) {
    std::vector<const Applicant*> sorted_applicants(applicants.size());
    for (size_t i = 0; i < applicants.size(); ++i) {
        sorted_applicants[i] = &applicants[i];
    }

    std::sort(sorted_applicants.begin(), sorted_applicants.end(), [](const Applicant* left, const Applicant* right) {
        return std::tie(left->points, right->student.birth_date.year, right->student.birth_date.month,
                        right->student.birth_date.day, left->student.name) >
               std::tie(right->points, left->student.birth_date.year, left->student.birth_date.month,
                        left->student.birth_date.day, right->student.name);
    });
    return sorted_applicants;
}

AdmissionTable FillUniversities(const std::vector<University>& universities, const std::vector<Applicant>& applicants) {
    std::vector<const Applicant*> sorted_applicants = SortApplicants(applicants);

    std::vector<University> uni(universities.begin(), universities.end());
    AdmissionTable final;
    // using AdmissionTable = std::unordered_map<std::string, std::vector<const Student*>>;
    bool has_university = false;

    for (auto const& s : sorted_applicants) {
        has_university = false;
        for (auto const& u_name : s->wish_list) {
            if (has_university) {
                continue;
            }

            for (auto& u : uni) {
                if (u.name == u_name) {
                    if (u.max_students != 0) {
                        if (!final.count(u_name)) {
                            final[u.name] = {};
                        }
                        final[u_name].push_back(&s->student);
                        u.max_students -= 1;
                        has_university = true;
                    }
                }
            }
        }
    }
    return final;
}
