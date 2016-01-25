
# define class boardSquare
class BoardSquare
	def initialize(squareState, name)
		@squareState = squareState
		@name = name
	end

	def changeState(newState)
		@squareState = newState
	end
	def returnState
		return @squareState
	end
	def printState
		print @squareState + '   '
	end
	def getSquare(input, player)
        if input == @name && player == ' X ' && @squareState
            changeState(player)
        elsif input == @name && player == ' O ' && @squareState == '---'
            changeState(player)
        end
end
end
#define method for drawing game board
def drawBoard
	$firstRow.each do |i|
		i.printState
	end
	newLine
	$secondRow.each do |i|
		i.printState
	end
	newLine
	$thirdRow.each do |i|
		i.printState
	end
	newLine
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
$firstRow = [a1, a2, a3]
$secondRow = [b1, b2, b3]
$thirdRow = [c1, c2, c3]

$winConditions = [[a1, a2, a3], [b1, b2, b3], [c1, c2, c3], [a1, b1, c1], [a2, b2, c2], [a3, b3, c3], [a1, b2, c3], [a3, b2, c1]]



$board = [$firstRow, $secondRow, $thirdRow]
$turnNum = 0

def takeTurn
	if $turnNum % 2 == 0
		puts 'Player 1, what is your move?'
    else
        puts 'Player 2, what is your move?'
    end
    newLine
    input = gets.chomp
    $board.each do |i|
        i.each do |k|
            if $turnNum % 2 == 0
                k.getSquare(input, ' X ')
            else
                k.getSquare(input, ' O ')
            end
        end
    end
    $turnNum += 1
end

def hasWon

	$winConditions.each do |i|
		if i[0].returnState == ' X ' && i[1].returnState == ' X ' && i[2].returnState == ' X '
			puts 'Player 1 wins!'
			exit
        elsif i[0].returnState == ' O ' && i[1].returnState == ' O ' && i[2].returnState == ' O '
            puts 'Player 2 wins!'
            exit
        end
	end

end

newLine


drawBoard


newLine
newLine


until $turnNum > 8
    takeTurn
    newLine
    drawBoard
    hasWon
    newLine
end until $turnNum > 8
puts "It's a draw!"


