class RoomsController < ApplicationController

def new
 @room = Room.new
end

def create
 @room = Room.new(params[:room].permit(:title, :text))

 if @room.save
   redirect_to @room
 else 
   render 'new' 
 end

end

def show
  @room = Room.find(params[:id]) 
end

def index
 @rooms = Room.all
end


private 
def room_params
 params.require(:room).permit(:title, :text)
end

end
