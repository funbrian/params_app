class Api::ParamsController < ApplicationController
  def name
    params[:name]
    if params[:name][0] == "a"
      @message = "Hey!"
    else
      @message = "Name does not begin with a"
    end
    render 'query_params.json.jb'
  end

  def guess
    params[:user_guess]
    answer = 40
    if params[:user_guess].to_i > answer
      @message = "you guessed too high"
    elsif params[:user_guess].to_i < answer
      @message = "you guessed too low"
    else
      @message = "you win"
    end
    render 'number_params.json.jb'
  end
end
