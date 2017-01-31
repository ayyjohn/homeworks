require_relative 'player'

class Board

  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { [] }
    setup_cups
  end

  def setup_cups
    @cups.each_index do |index|
      unless index == 6 || index == 13
        @cups[index] = [:stone, :stone, :stone, :stone]
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(1,13)
  end

  def place_stones

  end

  def make_move(start_pos, current_player)
    i = start_pos + 1
    until @cups[start_pos].empty?
      i = 0 if i > 13
      if current_player == "Erica"
        @cups[i] << @cups[start_pos].pop unless i == 13
        i += 1 unless @cups[start_pos].empty?
      else
        @cups[i] << @cups[start_pos].pop unless i == 6
        i += 1 unless @cups[start_pos].empty?
      end
      i = 0 if i > 13
    end
    render
    next_turn(i)
    if cups[i].length == 1 && i != 13 && i != 6
      :switch
    elsif i == 6 && current_player == "Erica"
      :prompt
    elsif i == 13 && current_player == "James"
      :prompt
    else
      i
    end
  end

  def next_turn(ending_cup_idx)

  end


  def render
    print "      #{@cups[7..12].reverse.map(&:count)}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0...6).all? { |idx| cups[idx].empty? } ||
      (7...13).all? { |idx| cups[idx].empty? }
  end

  def winner
    if cups[6].length > cups[13].length
      "Erica"
    elsif cups[6].length < cups[13].length
      "James"
    else
      :draw
    end
  end

end
