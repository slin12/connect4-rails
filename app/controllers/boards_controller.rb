class BoardsController < ApplicationController

  def new
    @game = Board.new
    @board = @game.board
    @player_number = @game.player_number
    @game.save
  end

  def update
    @game = Board.find(params[:id])
    column = board_params.to_i
    @game.position = @game.place_marker(column)
    @game.save
    @board = @game.board
    @player_number = @game.player_number
    if @game.win?
      Board.delete_all
      render 'win'
    else
      @game.turn_count += 1
      @game.save
      @player_number = @game.player_number
      render 'new'
    end
  end

  private
  def board_params
    params.require(:commit)
  end
end
