class CategoriesController < ApplicationController
  before_filter :get_post_object, :only =>[:edit, :update,:destroy]

private

  def get_post_object
    @category=Category.find_by_id(params[:id])
    if @category.nil?
      flash[:error]="sorry,no category found!"
      redirect_to categories_path and return
    end
  end

public
  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
  end
  
  def edit
  end
  
  def update
    if @category.update_attributes(params[:category])
      flash[:notice]="category has been updated"
      redirect_to categories_path
    else
      render :action =>:edit
    end
  end
  
  def create
    @category= Category.new(params[:category])
    if @category.save
      flash[:notice] = "Category has been successfully created"
      redirect_to categories_path
    else
      render :action =>:new
    end  
  end
  
  def destroy
    if @category == Category.default
      flash[:error] = "sorry, you can not delete the default category"
      redirect_to categories_path
    end  
    @category.destroy
    flash[:notice]="successully deleted the category"
    redirect_to categories_path
  end
end
