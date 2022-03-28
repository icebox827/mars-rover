class Rover
  # initialize the rover
  def initialize(x, y, heading)
    @x = x
    @y = y
    @heading = heading
  end

  # determine the position of the rover
  def instruction(position)
    position.each do |input|
      if input == 'L'
        left
        puts 'The rover turn 90 degree left'
      elsif input == 'R'
        puts 'The rover turn 90 degree right'
      else 
        move
        puts 'The rover move one grid ahead'
      end
    end
    puts "The new postion of the rover is: x= #{@x} y= #{@y} facing= #{@heading}"
  end

  # Define each position
  def left
    if @heading == 'N'
        puts "the rover is facing North."
      @heading = 'W'
    elsif @heading == 'W'
        puts "the rover is facting West"
      @heading = 'S'
    elsif @heading == 'E'
        puts "the rover is facting East"
      @heading = 'N'
    else
      puts "the rover is facing South"
      @heading = 'E'
    end
  end

  def right
    if @heading == 'S'
        puts "the rover is facing West."
      @heading = 'W'
    elsif @heading == 'N'
        puts "the rover is facting East"
      @heading = 'E'
    elsif @heading == 'W'
        puts "the rover is facting North"
      @heading = 'N'
    else
      puts "the rover is facing South"
      @heading = 'S'
    end
  end

  def move
    if @heading == 'N'
      @y += 1
    elsif @heading == 'E'
      @x += 1
    elsif @heading == 'S'
      @y -= 1
    else
      @x -= 1
    end
  end

  # Initialize each rover position and heading
  # first_rover = Rover.new(1,2,'N')
  second_rover = Rover.new(3,3,'E')

  # Instruction for each rover th explore the plateau
  # first_rover.instruction(['L','M','L','M','L','M','L','M','M'])
  second_rover.instruction(['M','M','R','M','M','R','M','R','R','M'])
end