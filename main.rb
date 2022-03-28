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
      case input
      when 'L'
        left
        puts 'The rover turn 90 degree left'
      when 'R'
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
    case @heading
    when 'N'
      puts 'the rover is facing North.'
      @heading = 'W'
    when 'W'
      puts 'the rover is facting West'
      @heading = 'S'
    when 'E'
      puts 'the rover is facting East'
      @heading = 'N'
    else
      puts 'the rover is facing South'
      @heading = 'E'
    end
  end

  def right
    case @heading
    when 'S'
      puts 'the rover is facing West.'
      @heading = 'W'
    when 'N'
      puts 'the rover is facting East'
      @heading = 'E'
    when 'W'
      puts 'the rover is facting North'
      @heading = 'N'
    else
      puts 'the rover is facing South'
      @heading = 'S'
    end
  end

  def move
    case @heading
    when 'N'
      @y += 1
    when 'E'
      @x += 1
    when 'S'
      @y -= 1
    else
      @x -= 1
    end
  end

  # Initialize each rover position and heading
  first_rover = Rover.new(1, 2, 'N')
  second_rover = Rover.new(3, 3, 'E')

  # Instruction for each rover th explore the plateau
  first_rover.instruction(%w[L M L M L M L M M])
  second_rover.instruction(%w[M M R M M R M R R M])
end
