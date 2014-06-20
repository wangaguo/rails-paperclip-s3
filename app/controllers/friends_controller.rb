class FriendsController < ApplicationController
  # Other CRUD actions omitted

  def create
    @friend = Friend.new(friend_params)

    if @friend.save
      redirect_to @friend, notice: 'Friend was successfully created.'
     else
       render action: 'new'
    end
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def new
    @friend = Friend.new
  end

  def index
    @friends = Friend.all
  end

  private

  def friend_params
    params.require(:friend).permit(:avatar, :name)
  end
end