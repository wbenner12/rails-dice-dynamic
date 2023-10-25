class GameController < ApplicationController

  def home
    render({ :template => "my_templates/go_home" })
  end

  def play
    @number = params.fetch("number").to_i

    @sides = params.fetch("sides").to_i

    @rolls = []

    @number.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end

    render({ :template => "my_templates/press_play" })
  end
end
