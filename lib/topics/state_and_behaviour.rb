# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # The class we work with
  class Car
    attr_accessor :year, :color, :model, :current_speed

    def initialize(args)
      @year = args.fetch(:year, 2016)
      @color = args.fetch(:color, 'silver')
      @model = args.fetch(:model, 'Model 3')
      @current_speed = 0
    end

    def self.default_car
      Car.new
    end

    def speed_up(speed_increment)
      self.current_speed += speed_increment
      puts 'You exceed highest possible speed limit!' if @current_speed > 140
    end

    def push_break(speed_decrement)
      self.current_speed -= speed_decrement if @current_speed >= speed_decrement
      puts 'It is a full stop.' if @current_speed.zero?
    end
  end
end
