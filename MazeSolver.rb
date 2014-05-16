require 'pry'

class MazeSolver

  attr_reader :maze
  attr_accessor :traveled_path, :visited_nodes, :node_queue, :maze_array

  def initialize(small_maze)
    @maze = small_maze 
    @traveled_path = []
    @visited_nodes = []
    @node_queue = []
    @maze_array
  end

  #Good practive to not call expense parse method every time.
  def maze_array
    @maze_array ||= parse_maze_array
  end

  def solve
    traveled_path << start_location
    visited_nodes << start_location
    node_queue << start_location
    # Pop out a node from the node_queue 
    run = true
    while run == true #node_queue.length != 0
      if visited_nodes.include?(end_location)
        run = false
      else
        current_move = node_queue.shift
        x = neighbors(current_move) #Find Neighbors
        future_moves = valid_nodes?(x) #Check if neighbors are valid
        add_to_queues(current_move, future_moves) # Add valid nodes to path
      end
    end
    #binding.pry
  end

  def solution_path
    @solution_path = []
  end

  def display_solution_path

  end

  def neighbors(node)
    r=node[0]
    c=node[1]
    neighbors = [[r, c+1],[r,c-1],[r+1,c],[r-1,c]]
  end

  #Only return the valid notes
  def valid_nodes?(neighbors)
    neighbors.select do |neighbor|
      if !visited_nodes.include?(neighbor)
        if node_value(*neighbor) != '#'
          true
        end
      end
    end
  end

  def node_value(r, c)
    maze_array[r][c]
  end

  def add_to_queues(current_move, future_moves)
    future_moves.each do |future_move|
      traveled_path << [current_move, future_move]
      visited_nodes << future_move
      node_queue << future_move
    end
  end

  def start_location
    maze_array.each_with_index do |row, r|
      row.each_with_index do |element, c|
        return [r, c] if element == "→" 
      end
    end
  end

  def end_location
    maze_array.each_with_index do |row, r|
      row.each_with_index do |element, c|
        return [r, c] if element == "@" 
      end
    end
  end

  private

  def parse_maze_array
    maze_arr = []
    maze.each_line do |line|
      striped_line = line.lstrip.chop
      line_arr = []
      striped_line.each_char do |char|
        line_arr << char
      end
      maze_arr << line_arr
    end
    @maze_array = maze_arr
  end
end