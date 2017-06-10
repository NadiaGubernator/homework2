# frozen_string_literal: true

# exercise object model
module ObjectModel
  #
  module LinuxFriendly
    def fork_process
      super
    end
  end
  #
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
  #
  class Laptop < PersonalComputer
    prepend LinuxFriendly
  end
end
