# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
   WIN_COMBINATIONS.select do |combo|
    spot1 = board[combo[0]]
    spot2 = board[combo[1]]
    spot3 = board[combo[2]]

    if spot1 == "X" && spot2 == "X" && spot3 == "X"
      return combo
    elsif spot1 == "O" && spot2 == "O" && spot3 =="O"
      return combo
      end
    end
     false
end

def full?(board)
  board.none? {|token| token == "" || token == " "}
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  elsif won?(board) != false
    return false
  elsif board.any? {|token| token == "" || token == " "}
    return false
  end
end

def over?(board)
  if won?(board) != false || full?(board) == true || draw?(board) == true
    return true
  end
end

def winner(board)
 if won?(board)
  return board[won?(board)[0]]
  end
end






   
