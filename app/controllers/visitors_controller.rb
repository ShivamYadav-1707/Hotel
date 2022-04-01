class VisitorsController < ApplicationController
  before_action :set_visitor, only: [:show, :edit, :update, :destroy]
  def index
    @visitors = Visitor.all
  end

  def show
  end

  def new
    @visitors = Visitor.new
  end

  def edit
  end

  def create
    @visitors=Visitor.new(params.require(:visitor).permit(:name,:room_no,:description,:date_of_arrival))
    if @visitors.save
      flash[:notice]="Entry of new visitor is made successfully"
      redirect_to @visitors
    else
      render 'new' 
    end
  end

  def update
    if Visitor.update(params.require(:visitor).permit(:name,:room_no,:description,:date_of_arrival))
      flash[:notice]="Entry of new visitor is updated successfully"
      redirect_to @visitors
    else
      render 'edit'
    end
  end

  def destroy
    @visitors.destroy
    redirect_to visitors_path
  end
  private
    def set_visitor
      @visitors=Visitor.find(params[ :id])
    end
       
end
