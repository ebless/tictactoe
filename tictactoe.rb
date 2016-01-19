
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
        if @squareState != '---'
            puts ''
            puts "Oops! You can't make that move!"
            puts ''
            
            return 1
        elsif input == @name && player == ' X ' && @squareState
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

$fourCorners = [a1, c1, a3, c3]
$fourSides = [a2, b3, c2, b1]

$winConditions = [[a1, a2, a3], [b1, b2, b3], [c1, c2, c3], [a1, b1, c1], [a2, b2, c2], [a3, b3, c3], [a1, b2, c3], [a3, b2, c1]]



$board = [$firstRow, $secondRow, $thirdRow]
$turnNum = 0

def takeTurn
	if $turnNum % 2 == 0
		puts 'Player 1, what is your move?'
		newLine
		input = gets.chomp
		$board.each do |i|
			i.each do |k|
				k.getSquare(input, ' X ')
            end
		end
		$turnNum += 1
	else
		puts 'Player 2, what is your move?'
		newLine
		input = gets.chomp
		$board.each do |i|
			i.each do |k|
				k.getSquare(input, ' O ')
			end
		end
		$turnNum += 1
	end
end

def hasWon

	$winConditions.each do |i|
		if i[0].returnState == ' X ' && i[1].returnState == ' X ' && i[2].returnState == ' X '
			puts 'Player 1 wins!'
			newLine
			newLine
			exit
		elsif i[0].returnState == ' O ' && i[1].returnState == ' O ' && i[2].returnState == ' O '
			puts 'Player 2 wins!'
			newLine
			newLine
			exit
		end
	end

end

def aiMove
	$board.each do |i|
		#Step 1: If you have two in a row, take the third
		if i[0].returnState == ' O ' && i[1].returnState == ' O '
			i[2].changeState(' O ')
			$turnNum += 1 
		elsif i[1].returnState == ' O ' && i[2].returnState == ' O '
			i[0].changeState(' O ')
			$turnNum += 1 
		elsif i[0].returnState == ' O ' && i[2].returnState == ' O '
			i[1].changeState(' O ')
			$turnNum += 1 
		#Step 2: If your opponent has two in a row, block the third
		elsif i[0].returnState == ' X ' && i[1].returnState == ' X '
			i[2].changeState(' O ') 
			$turnNum += 1 
		elsif i[1].returnState == ' X ' && i[2].returnState == ' X '
			i[0].changeState(' O ')
			$turnNum += 1 
		elsif i[0].returnState == ' X ' && i[2].returnState == ' X '
			i[1].changeState(' O ')
			$turnNum += 1 
		
		end
	end
	#Step 3: Check if center is occupied
	if $secondRow[1].returnState == '---'
		$secondRow[1].changeState(' O ')
		$turnNum += 1 
		return 0
	end
	#Step 4: Go in an empty corner
	$fourCorners.each do |i|
		if i.returnState == '---'
			i.changeState(' O ')
			$turnNum += 1 
			return 0
		end
	end
    #Step 5: Go in an empty side
	$fourSides.each do |i|
		if i.returnState == '---'
			i.changeState(' O ')
			$turnNum += 1 
			return 0
		end
	end
end



newLine


drawBoard


newLine
newLine

takeTurn
newLine
drawBoard
hasWon
takeTurn
drawBoard
hasWon
newLine

takeTurn
newLine
drawBoard
hasWon
takeTurn
drawBoard
hasWon
newLine

takeTurn
newLine
drawBoard
hasWon
takeTurn
drawBoard
hasWon
newLine

takeTurn
newLine
drawBoard
hasWon
takeTurn
drawBoard
hasWon
newLine

takeTurn
newLine
drawBoard
hasWon
takeTurn
drawBoard
hasWon
newLine

takeTurn
newLine
drawBoard
hasWon
takeTurn
drawBoard
hasWon
newLine

takeTurn
newLine
drawBoard
hasWon
takeTurn
drawBoard
hasWon
newLine

takeTurn
newLine
drawBoard
hasWon
takeTurn
drawBoard
hasWon
newLine

takeTurn
newLine
drawBoard
hasWon
takeTurn
drawBoard
hasWon
newLine
puts "It's a draw!"

