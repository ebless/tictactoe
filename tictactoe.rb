# define class boardSquare
class BoardSquare
	def initialize(squareState, name)
		@squareState = squareState
		@name = name
	end

	def changeState(newState)
		@squareState = newState
	end
	def printState
		print @squareState + '   '
	end
	def getSquare(input, player)
	if input == @name && player == ' X '
		changeState(player)
	elsif input == @name && player == ' O '
		changeState(player)
	end
end
end
#define method for drawing game board
def drawBoard(firstRow, secondRow, thirdRow)
	firstRow.each do |i|
		i.printState
	end
	newLine
	secondRow.each do |i|
		i.printState
	end
	newLine
	thirdRow.each do |i|
		i.printState
	end
end

def newLine
	puts ''
end

#create each square as an instance of the BoardSquare class
a1 = BoardSquare.new('---', 'a1')
a2 = BoardSquare.new('---', 'a2')
a3 = BoardSquare.new('---', 'a3')
b1 = BoardSquare.new('---', 'b1')
b2 = BoardSquare.new('---', 'b2')
b3 = BoardSquare.new('---', 'b3')
c1 = BoardSquare.new('---', 'c1')
c2 = BoardSquare.new('---', 'c2')
c3 = BoardSquare.new('---', 'c3')


#group the squares into arrays
firstRow = [a1, a2, a3]
secondRow = [b1, b2, b3]
thirdRow = [c1, c2, c3]

board = [firstRow, secondRow, thirdRow]


newLine

drawBoard(firstRow, secondRow, thirdRow)

newLine
newLine
puts 'Player 1, what is your move? (enter square name)'
input = gets.chomp

#loop through each square and call method getSquare
board.each do |i|
	i.each do |k|
		k.getSquare(input, ' X ')
	end
end

newLine

drawBoard(firstRow, secondRow, thirdRow)
newLine
newLine

