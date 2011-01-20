class PlayersController < ApplicationController
  respond_to :html, :xml
  
  def index
    @players = Player.all
    respond_with(@players)
  end

  def show
    @player = Player.find(params[:id])
    respond_with(@player)
  end


  def new
    @player = Player.new
    respond_with(@player)
  end

  def edit
    @player = Player.find(params[:id])
  end

  def create
    @player = Player.new(params[:player])
    if @player.save
      flash[:notice => 'Player was successfully created.']
    end
    respond_with(@player)
  end

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(params[:player])
      flash[:notice => 'Player was successfully updated.']
    end
    respond_with(@player)
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    respond_with(@player)
  end
end
