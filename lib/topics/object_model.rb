# frozen_string_literal: true

# exercise object model
module ObjectModel
  # Independent module for learning about prepend and super
  module LinuxFriendly
    def fork_process
      super
    end
  end
  # Parent class with all functionality
  class PersonalComputer
    def fork_process
      fork do
        puts "We created new child process with pid #{Process.pid}"
      end
      'Parent: allocate memory'
    end

    def mine_bitcoins
      # My attempt to make random hash digest creation
      num_of_hexidecimals = 20
      puts Array.new(num_of_hexidecimals) { format('%02X', rand(0..255)) }.join
      inspect
    end
  end
  # Child class
  class Laptop < PersonalComputer
    prepend LinuxFriendly
  end
end
