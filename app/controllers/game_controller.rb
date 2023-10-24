class GameController < ApplicationController

  def home

    render({ :template => "my_templates/go_home" })
  end

end
