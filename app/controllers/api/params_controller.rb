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
    number = params[:user_guess].to_i
    answer = 40
    if number > answer
      @message = "you guessed too high"
    elsif number < answer
      @message = "you guessed too low"
    else
      @message = "you win"
    end
    render 'number_params.json.jb'
  end

  def segment
    p params[:first_name]
    render 'segment.json.jb'
  end

  def guess_segment
    number = params[:user_input].to_i
    answer = 40
    if number > answer
      @message = "you guessed too high"
    elsif number < answer
      @message = "you guessed too low"
    else
      @message = "you win"
    end
    render 'guess_a_number_segment.json.jb'
  end
end
