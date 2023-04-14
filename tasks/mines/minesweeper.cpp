#include "minesweeper.h"
#include <random>

Minesweeper::Minesweeper(size_t width, size_t height, size_t mines_count) {
    field_ = std::vector(height, std::vector<int8_t>(width, 1));
    can_check = width * height - mines_count;
    game_status_now = Minesweeper::GameStatus::IN_PROGRESS;

    std::vector<size_t> first;
    for (size_t i = 0; i < width * height; ++i) {
        first.push_back(i);
    }

    std::vector<int> second;
    std::sample(first.begin(), first.end(), std::back_inserter(second), mines_count,
                std::mt19937{std::random_device{}()});

    for (auto i : second) {
        field_[i / width][i % width] = 2;
    }
}

Minesweeper::Minesweeper(size_t width, size_t height, const std::vector<Minesweeper::Cell>& cells_with_mines) {
    field_ = std::vector(height, std::vector<int8_t>(width, 1));
    can_check = width * height - cells_with_mines.size();
    game_status_now = Minesweeper::GameStatus::IN_PROGRESS;

    for (size_t i = 0; i < cells_with_mines.size(); ++i) {
        field_[cells_with_mines[i].y][cells_with_mines[i].x] = 2;
    }
}

void Minesweeper::NewGame(size_t width, size_t height, size_t mines_count) {
    field_ = std::vector(height, std::vector<int8_t>(width, 1));
    can_check = width * height - mines_count;
    game_status_now = Minesweeper::GameStatus::IN_PROGRESS;

    std::vector<size_t> first;
    for (size_t i = 0; i < width * height; ++i) {
        first.push_back(i);
    }

    std::vector<int> second;
    std::sample(first.begin(), first.end(), std::back_inserter(second), mines_count,
                std::mt19937{std::random_device{}()});

    for (auto i : second) {
        field_[i / width][i % width] = 2;
    }
}

void Minesweeper::NewGame(size_t width, size_t height, const std::vector<Cell>& cells_with_mines) {
    field_ = std::vector(height, std::vector<int8_t>(width, 1));
    can_check = width * height - cells_with_mines.size();
    game_status_now = Minesweeper::GameStatus::IN_PROGRESS;

    for (size_t i = 0; i < cells_with_mines.size(); ++i) {
        field_[cells_with_mines[i].y][cells_with_mines[i].x] = 2;
    }
}

void Minesweeper::OpenCell(const Cell& cell) {
    size_t minimum_po_y = 0;
    size_t maximum_po_y = 0;
    size_t minimum_po_x = 0;
    size_t maximum_po_x = 0;

    if (game_status_now != Minesweeper::GameStatus::IN_PROGRESS || field_[cell.y][cell.x] == 3 ||
        field_[cell.y][cell.x] == 4 || cell.y >= field_.size() || cell.x >= field_[0].size()) {
        return;
    }

    if (count == 0) {
        start = static_cast<int>(clock());
    }
    count += 1;

    if (field_[cell.y][cell.x] == 1) {
        can_check -= 1;
        if (can_check == 0) {
            game_status_now = Minesweeper::GameStatus::VICTORY;
            end = static_cast<int>(clock());
        }

        if (cell.x != 0) {
            minimum_po_x = cell.x - 1;
        } else {
            minimum_po_x = 0;
        }

        if (cell.y != 0) {
            minimum_po_y = cell.y - 1;
        } else {
            minimum_po_y = 0;
        }

        if (!field_.empty()) {
            maximum_po_y = std::min(cell.y + 1, field_.size() - 1);
            maximum_po_x = std::min(cell.x + 1, field_[0].size() - 1);
        }

        field_[cell.y][cell.x] = 0;

        for (size_t i = minimum_po_y; i <= maximum_po_y; ++i) {
            for (size_t j = minimum_po_x; j <= maximum_po_x; ++j) {
                if (field_[i][j] == 2 || field_[i][j] == 4) {
                    field_[cell.y][cell.x] -= 1;
                }
            }
        }

        if (field_[cell.y][cell.x] == 0) {
            for (size_t i = minimum_po_y; i <= maximum_po_y; ++i) {
                for (size_t j = minimum_po_x; j <= maximum_po_x; ++j) {
                    if (field_[i][j] == 1) {
                        OpenCell({.x = j, .y = i});
                    }
                }
            }
        }
    }
    if (field_[cell.y][cell.x] == 2) {
        game_status_now = Minesweeper::GameStatus::DEFEAT;
        end = static_cast<int>(clock());
    }
}

void Minesweeper::MarkCell(const Cell& cell) {
    if (game_status_now != Minesweeper::GameStatus::IN_PROGRESS || cell.x >= field_[0].size() ||
        field_[cell.y][cell.x] <= 0 || cell.y >= field_.size()) {
        return;
    }

    game_status_now = Minesweeper::GameStatus::IN_PROGRESS;
    if (count == 0) {
        start = static_cast<int>(clock());
    }
    count += 1;

    if (field_[cell.y][cell.x] == 1) {
        field_[cell.y][cell.x] = 3;
    } else if (field_[cell.y][cell.x] == 2) {
        field_[cell.y][cell.x] = 4;
    } else if (field_[cell.y][cell.x] == 3) {
        field_[cell.y][cell.x] = 1;
    } else if (field_[cell.y][cell.x] == 4) {
        field_[cell.y][cell.x] = 2;
    }
}

Minesweeper::GameStatus Minesweeper::GetGameStatus() const {
    return game_status_now;
}

time_t Minesweeper::GetGameTime() const {
    time_t timer = end - start;
    return timer;
}

Minesweeper::RenderedField Minesweeper::RenderField() const {
    size_t sizeone = field_.size();
    std::vector<std::string> answer(sizeone);

    for (size_t i = 0; i < sizeone; ++i) {
        for (size_t j = 0; j < field_[i].size(); ++j) {
            if (field_[i][j] == 0) {
                answer[i] += ".";
            } else if (field_[i][j] == 1) {
                answer[i] += "-";
            } else if (field_[i][j] == 2) {
                if (game_status_now == Minesweeper::GameStatus::DEFEAT) {
                    answer[i] += "*";
                } else {
                    answer[i] += "-";
                }
            } else if (field_[i][j] == 3) {
                answer[i] += "?";
            } else if (field_[i][j] == 4) {
                answer[i] += "?";
            } else {
                answer[i] += static_cast<char>('0' - field_[i][j]);
            }
        }
    }
    return answer;
}
