class Player
  attr_reader :name, :side

  def initialize(name, side)
    @name, @side = name, side
  end

  def prompt
    puts "#{@name}, please enter which cup you would like to start from: "
    start_pos = gets.chomp.to_i
    if start_pos.between?(1, 6) && @side != 1 ||
        start_pos.between?(7, 12) && @side != 2
      raise "not your side!"
    else
      start_pos
    end
  end
end
