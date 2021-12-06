class DictsController < ApplicationController
  def index
    @dicts = Dict.all
  end
  
  def show
    @dict = Dict.find(params[:id])
  end  
  
  def new
    @dict = Dict.new
  end
  
  def create
    @dict = Dict.new(dict_params)
    if @dict.save
      redirect_to @dict
    else
      render :new, status: :unprocessable_entity
    end  
  end  
  
  def edit
    @dict = Dict.find(params[:id])
  end  
  
  def update
    @dict = Dict.find(params[:id])
    if @dict.update(dict_params)
      redirect_to @dict
    else
      render :edit, status: :unprocessable_entity
    end    
  end
  
  def destroy
    @dict = Dict.find(params[:id])
    @dict.destroy
    redirect_to root_path
  end

  
  private 
    def dict_params
      params.require(:dict).permit(:name, :condition)
    end
      
end
