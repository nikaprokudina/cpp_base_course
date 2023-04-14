#include "search.h"

Word::Word(size_t start, size_t finish) : first_(start), last_(finish) {
}

size_t Word::Len() const {
    return last_ - first_;
}

size_t Word::PosQuery(size_t s) const {
    return first_ + s;
}

int Word::GetCounter() const {
    return counter_;
}

void Word::IncreaseCounter() {
    ++counter_;
}

Line::Line(size_t start, size_t finish) : first_(start), last_(finish) {
}

void Line::CountWords(std::string_view text) {
    int word_kolvo = 0;
    size_t pos_begin = 0;
    size_t pos_finish = 0;
    const size_t text_length = text.length();
    for (size_t i = first_; i < last_; ++i) {
        if (!std::isalnum(text[i])) {
            pos_finish = i;
            if (pos_begin != pos_finish) {
                ++word_kolvo;
            }
            pos_begin = i + 1;
        }
    }

    word_kolvo += (pos_begin < text_length && std::isalnum(text[pos_begin])) ? 1 : 0;
    count_words_ = word_kolvo;
}

int Line::CountInLine(std::string_view text, std::string_view query, Word& word) const {
    int count = 0;
    const size_t line_begin = first_;
    const size_t line_finish = last_ - word.Len() + 1;
    for (size_t i = line_begin; i < line_finish; ++i) {
        if (i > line_begin && std::isalnum(text[i - 1])) {
            continue;
        }
        bool found = true;
        size_t j = i;
        if (j > first_ && std::isalpha(text[j - 1])) {
            found = false;
        }
        for (; j <= i + word.Len(); ++j) {
            if (tolower(text[j]) != tolower(query[word.PosQuery(j - i)])) {
                found = false;
                break;
            }
        }
        if (j <= last_ && std::isalpha(text[j])) {
            found = false;
        }
        if (found) {
            ++count;
        }
    }
    return count;
}

void Line::TfIdf(size_t len) {
    double sum = 0.0;
    double loglen = log(static_cast<double>(len));
    double count_words = static_cast<double>(count_words_);

    for (auto& [word, counter] : needed_words_) {
        double tf = static_cast<double>(counter) / count_words;
        double idf = loglen - log(static_cast<double>(word.GetCounter()));
        sum += tf * idf;
    }

    tf_idf_ = sum;
}

double Line::GetTfIdf() const {
    return tf_idf_;
}

bool Line::operator<(const Line& other) const {
    if (this->tf_idf_ != other.tf_idf_) {
        return this->tf_idf_ < other.tf_idf_;
    }
    if (this->first_ != other.first_) {
        return this->first_ < other.first_;
    }
    return this->last_ < other.last_;
}

bool Line::operator==(const Line& other) const {
    return std::abs(this->tf_idf_ - other.tf_idf_) < std::numeric_limits<double>::epsilon();
}

void Line::AppendWord(const Word& word, int num) {
    needed_words_.push_back(std::make_pair(word, num));
}

std::string_view Line::GetRes(std::string_view text) const {
    return std::string_view(text.data() + first_, last_ - first_ + 1);
}

void SearchEngine::BuildIndex(std::string_view text) {
    text_ = text;
    size_t start = 0;
    for (size_t i = 0; i < text.size(); ++i) {
        if (text[i] == '\n') {
            Line line = {start, i - 1};
            line.CountWords(text);
            lines_.push_back(line);
            start = i + 1;
        }
    }
    if (start < text.size()) {
        Line line = {start, text.size() - 1};
        line.CountWords(text);
        lines_.push_back(line);
    }
}

std::vector<std::string_view> SearchEngine::Search(std::string_view query, size_t results_count) const {
    std::vector<Word> query_count;
    std::set<std::string_view> words;
    size_t start = 0;
    size_t finish = 0;
    while (start < query.size()) {
        start = query.find_first_not_of(" \t\n", start);
        if (start == std::string_view::npos) {
            break;
        }
        finish = query.find_first_of(" \t\n", start);
        if (finish == std::string_view::npos) {
            finish = query.size();
        }
        if (start != finish && words.find(query.substr(start, finish - start)) == words.end()) {
            words.insert(query.substr(start, finish - start));
            Word word = {start, finish - 1};
            query_count.push_back(word);
        }
        start = finish + 1;
    }

    for (Line& line : lines_) {
        for (Word& word : query_count) {
            int num = line.CountInLine(text_, query, word);
            if (num > 0) {
                word.IncreaseCounter();
                line.AppendWord(word, num);
            }
        }
    }

    for (Line& line : lines_) {
        line.TfIdf(lines_.size());
    }
    std::stable_sort(lines_.rbegin(), lines_.rend());
    std::vector<std::string_view> res;
    for (const Line& line : lines_) {
        if (res.size() >= results_count || line.GetTfIdf() <= 0) {
            break;
        }
        res.push_back(line.GetRes(text_));
    }
    return res;
}