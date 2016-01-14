# define class boardSquare
class BoardSquare
	def initialize(squareState)
		@squareState = squareState
	end

	def changeState(newState)
		@squareState = newState
	end
	def printState
		print @squareState + '   '
	end
end

def newLine
	puts ''
end

a1 = BoardSquare.new('---')
a2 = BoardSquare.new('---')
a3 = BoardSquare.new('---')
b1 = BoardSquare.new('---')
b2 = BoardSquare.new('---')
b3 = BoardSquare.new('---')
c1 = BoardSquare.new('---')
c2 = BoardSquare.new('---')
c3 = BoardSquare.new('---')



firstRow = [a1, a2, a3]
secondRow = [b1, b2, b3]
thirdRow = [c1, c2, c3]

board = [firstRow, secondRow, thirdRow]



newLine

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
newLine
newLine
puts 'Player 1, what is your move? (enter square name)'
input = gets.chomp

if input == 'a1'
		a1.changeState(' X ')
	elsif input == 'a2'
		a2.changeState(' X ')
	elsif input == 'a3'
		a3.changeState(' X ')
	elsif input == 'b1'
		b1.changeState(' X ')
	elsif input == 'b2'
		b2.changeState(' X ')
	elsif input == 'b3'
		b3.changeState(' X ')
	elsif input == 'c1'
		c1.changeState(' X ')
	elsif input == 'c2'
		c2.changeState(' X ')
	elsif input == 'c3'
		c3.changeState(' X ')
	end

newLine

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
newLine
newLine
puts 'Player 2, what is your move? (enter square name)'
input1 = gets.chomp

if input1 == 'a1'
		a1.changeState(' O ')
	elsif input1 == 'a2'
		a2.changeState(' O ')
	elsif input1 == 'a3'
		a3.changeState(' O ')
	elsif input1 == 'b1'
		b1.changeState(' O ')
	elsif input1 == 'b2'
		b2.changeState(' O ')
	elsif input1 == 'b3'
		b3.changeState(' O ')
	elsif input1 == 'c1'
		c1.changeState(' O ')
	elsif input1 == 'c2'
		c2.changeState(' O ')
	elsif input1 == 'c3'
		c3.changeState(' O ')
	end

newLine

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
newLine
newLine
puts 'Player 1, what is your move? (enter square name)'
input = gets.chomp

if input == 'a1'
		a1.changeState(' X ')
	elsif input == 'a2'
		a2.changeState(' X ')
	elsif input == 'a3'
		a3.changeState(' X ')
	elsif input == 'b1'
		b1.changeState(' X ')
	elsif input == 'b2'
		b2.changeState(' X ')
	elsif input == 'b3'
		b3.changeState(' X ')
	elsif input == 'c1'
		c1.changeState(' X ')
	elsif input == 'c2'
		c2.changeState(' X ')
	elsif input == 'c3'
		c3.changeState(' X ')
	end

newLine

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
newLine
newLine
puts 'Player 2, what is your move? (enter square name)'
input1 = gets.chomp

if input1 == 'a1'
		a1.changeState(' O ')
	elsif input1 == 'a2'
		a2.changeState(' O ')
	elsif input1 == 'a3'
		a3.changeState(' O ')
	elsif input1 == 'b1'
		b1.changeState(' O ')
	elsif input1 == 'b2'
		b2.changeState(' O ')
	elsif input1 == 'b3'
		b3.changeState(' O ')
	elsif input1 == 'c1'
		c1.changeState(' O ')
	elsif input1 == 'c2'
		c2.changeState(' O ')
	elsif input1 == 'c3'
		c3.changeState(' O ')
	end

newLine

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
newLine
newLine
puts 'Player 1, what is your move? (enter square name)'
input = gets.chomp

if input == 'a1'
		a1.changeState(' X ')
	elsif input == 'a2'
		a2.changeState(' X ')
	elsif input == 'a3'
		a3.changeState(' X ')
	elsif input == 'b1'
		b1.changeState(' X ')
	elsif input == 'b2'
		b2.changeState(' X ')
	elsif input == 'b3'
		b3.changeState(' X ')
	elsif input == 'c1'
		c1.changeState(' X ')
	elsif input == 'c2'
		c2.changeState(' X ')
	elsif input == 'c3'
		c3.changeState(' X ')
	end

newLine

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
newLine
newLine
puts 'Player 2, what is your move? (enter square name)'
input1 = gets.chomp

if input1 == 'a1'
		a1.changeState(' O ')
	elsif input1 == 'a2'
		a2.changeState(' O ')
	elsif input1 == 'a3'
		a3.changeState(' O ')
	elsif input1 == 'b1'
		b1.changeState(' O ')
	elsif input1 == 'b2'
		b2.changeState(' O ')
	elsif input1 == 'b3'
		b3.changeState(' O ')
	elsif input1 == 'c1'
		c1.changeState(' O ')
	elsif input1 == 'c2'
		c2.changeState(' O ')
	elsif input1 == 'c3'
		c3.changeState(' O ')
	end

newLine

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
newLine
newLine
puts 'Player 1, what is your move? (enter square name)'
input = gets.chomp

if input == 'a1'
		a1.changeState(' X ')
	elsif input == 'a2'
		a2.changeState(' X ')
	elsif input == 'a3'
		a3.changeState(' X ')
	elsif input == 'b1'
		b1.changeState(' X ')
	elsif input == 'b2'
		b2.changeState(' X ')
	elsif input == 'b3'
		b3.changeState(' X ')
	elsif input == 'c1'
		c1.changeState(' X ')
	elsif input == 'c2'
		c2.changeState(' X ')
	elsif input == 'c3'
		c3.changeState(' X ')
	end

newLine

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
newLine
newLine
puts 'Player 2, what is your move? (enter square name)'
input1 = gets.chomp

if input1 == 'a1'
		a1.changeState(' O ')
	elsif input1 == 'a2'
		a2.changeState(' O ')
	elsif input1 == 'a3'
		a3.changeState(' O ')
	elsif input1 == 'b1'
		b1.changeState(' O ')
	elsif input1 == 'b2'
		b2.changeState(' O ')
	elsif input1 == 'b3'
		b3.changeState(' O ')
	elsif input1 == 'c1'
		c1.changeState(' O ')
	elsif input1 == 'c2'
		c2.changeState(' O ')
	elsif input1 == 'c3'
		c3.changeState(' O ')
	end

newLine

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
newLine
newLine
puts 'Player 1, what is your move? (enter square name)'
input = gets.chomp

if input == 'a1'
		a1.changeState(' X ')
	elsif input == 'a2'
		a2.changeState(' X ')
	elsif input == 'a3'
		a3.changeState(' X ')
	elsif input == 'b1'
		b1.changeState(' X ')
	elsif input == 'b2'
		b2.changeState(' X ')
	elsif input == 'b3'
		b3.changeState(' X ')
	elsif input == 'c1'
		c1.changeState(' X ')
	elsif input == 'c2'
		c2.changeState(' X ')
	elsif input == 'c3'
		c3.changeState(' X ')
	end

newLine

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
newLine
newLine
puts 'Player 2, what is your move? (enter square name)'
input1 = gets.chomp

if input1 == 'a1'
		a1.changeState(' O ')
	elsif input1 == 'a2'
		a2.changeState(' O ')
	elsif input1 == 'a3'
		a3.changeState(' O ')
	elsif input1 == 'b1'
		b1.changeState(' O ')
	elsif input1 == 'b2'
		b2.changeState(' O ')
	elsif input1 == 'b3'
		b3.changeState(' O ')
	elsif input1 == 'c1'
		c1.changeState(' O ')
	elsif input1 == 'c2'
		c2.changeState(' O ')
	elsif input1 == 'c3'
		c3.changeState(' O ')
	end

newLine

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
newLine
newLine

newLine
