# Play a game of Tic Tac Toe
class TicTacToe
  attr_accessor :turn_number, :board

  def display_board
    p board[0]
    p board[1]
    p board[2]
  end

  def x_turn
    still_my_turn = true
    while still_my_turn == true
      puts 'Choose a space to put your X by giving a row number, a comma, and a column number, like this: 1, 2'
      move = gets.chomp.split(', ')
      if board[move[0].to_i][move[1].to_i] == '_'
        board[move[0].to_i][move[1].to_i] = 'X'
        still_my_turn = false
      else
        puts 'That space is already taken!'
      end
    end
    self.turn_number += 1
    display_board
  end

  def o_turn
    still_my_turn = true
    while still_my_turn == true
      puts 'Choose a space to put your O by giving a row number, a comma, and a column number, like this: 1, 2'
      move = gets.chomp.split(', ')
      if board[move[0].to_i][move[1].to_i] == '_'
        board[move[0].to_i][move[1].to_i] = 'O'
        still_my_turn = false
      else
        puts 'That space is already taken!'
      end
    end
    self.turn_number += 1
    display_board
  end

  def play_game
    win_condition = false
    while win_condition == false
      x_turn
      if
        (board[0][0] == 'X' && board[1][0] == 'X' && board[2][0] == 'X') ||
        (board[0][1] == 'X' && board[1][1] == 'X' && board[2][1] == 'X') ||
        (board[0][2] == 'X' && board[1][2] == 'X' && board[2][2] == 'X') ||
        (board[0][0] == 'X' && board[0][1] == 'X' && board[0][2] == 'X') ||
        (board[1][0] == 'X' && board[1][1] == 'X' && board[1][2] == 'X') ||
        (board[2][0] == 'X' && board[2][1] == 'X' && board[2][2] == 'X') ||
        (board[0][0] == 'X' && board[1][1] == 'X' && board[2][2] == 'X') ||
        (board[0][2] == 'X' && board[1][1] == 'X' && board[2][0] == 'X')
      then
        puts 'X wins!'
        win_condition = true
      end
      o_turn
      if
        (board[0][0] == 'O' && board[1][0] == 'O' && board[2][0] == 'O') ||
        (board[0][1] == 'O' && board[1][1] == 'O' && board[2][1] == 'O') ||
        (board[0][2] == 'O' && board[1][2] == 'O' && board[2][2] == 'O') ||
        (board[0][0] == 'O' && board[0][1] == 'O' && board[0][2] == 'O') ||
        (board[1][0] == 'O' && board[1][1] == 'O' && board[1][2] == 'O') ||
        (board[2][0] == 'O' && board[2][1] == 'O' && board[2][2] == 'O') ||
        (board[0][0] == 'O' && board[1][1] == 'O' && board[2][2] == 'O') ||
        (board[0][2] == 'O' && board[1][1] == 'O' && board[2][0] == 'O')
      then
        puts 'O wins!'
        win_condition = true
      end
    end
  end

  def initialize
    # starts a new game
    @turn_number = 0
    @board = [%w[_ _ _], %w[_ _ _], %w[_ _ _]]
    display_board
    play_game
  end
end
