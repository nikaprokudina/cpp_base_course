#include "sort_students.h"
#include <algorithm>

bool CompareStrings(std::string str1, std::string str2) {
    size_t lena = str1.size() < str2.size() ? str1.size() : str2.size();
    for (size_t i = 0; i < lena; ++i) {
        size_t ascii1 = str1[i];
        size_t ascii2 = str2[i];
        if (ascii1 > ascii2) {
            return false;
        }
        if (ascii1 < ascii2) {
            return true;
        }
    }
    if (str1.size() < str2.size()) {
        return true;
    } else if (str1.size() > str2.size()) {
        return false;
    }
    return false;
}

bool SortByName(Student &student1, Student &student2);

bool SortByDate(Student &student1, Student &student2) {
    Date birth_date1 = student1.birth_date;
    Date birth_date2 = student2.birth_date;
    std::string days1 =
        std::to_string(birth_date1.year) + std::to_string(birth_date1.month) + std::to_string(birth_date1.day);
    std::string days2 =
        std::to_string(birth_date2.year) + std::to_string(birth_date2.month) + std::to_string(birth_date2.day);
    if (days1 == days2) {
        return SortByName(student1, student2);
    }
    return (days1 < days2);
}

bool SortByName(Student &student1, Student &student2) {
    std::string lastname1 = student1.last_name;
    std::string name1 = student1.name;
    std::string lastname2 = student2.last_name;
    std::string name2 = student2.name;
    if (lastname1 == lastname2) {
        if (name1 == name2) {
            return SortByDate(student1, student2);
        } else {
            return CompareStrings(name1, name2);
        }
    } else {
        return CompareStrings(lastname1, lastname2);
    }
}

void SortStudents(std::vector<Student> &students, SortKind sortKind) {
    switch (sortKind) {
        case SortKind::Name:
            std::sort(students.begin(), students.end(), SortByName);
            break;
        case SortKind::Date:
            std::sort(students.begin(), students.end(), SortByDate);
            break;
    }
}
