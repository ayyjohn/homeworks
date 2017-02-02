tiles_array = [
              "up",
              "right-up",
              "right",
              "right-down",
              "down",
              "left-down",
              "left",
              "left-up"
              ]

# slow dance: given that the octopus' tentacles are numbered as the
# indices of the tiles_array, return the tentacle that the
# octopus should move when a specific tile is called to be stepped on

def slow_dance(move_direction, tentacles)
  tentacles.each_with_index do |direction, tentacle|
    return tentacle if direction == move_direction
  end
  -1
end

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)

# now that the octopus is warmed up, let's help her dance faster.
# use a different data structure and write a new function so that
# you can access the tentacle number in O(1) time.

tiles_hash = {
  up: 0,
  right_up: 1,
  right: 2,
  right_down: 3,
  down: 4,
  left_down: 5,
  left: 6,
  left_up: 7,
}

def fast_dance(move_direction, tentacles)
  tentacles[move_direction]
end

p fast_dance(:up, tiles_hash)
p fast_dance(:right_down, tiles_hash)
