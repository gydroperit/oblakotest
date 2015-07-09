class MainController < ApplicationController
  def index
  end
  def create
  	Todo.create(text: params[:form], project_id: params[:slct])
  	redirect_to :back
  end
  def update
  		puts params
		t = Todo.find(params[:id])
		t.isCompleted = !(Todo.find(params[:id]).isCompleted)
		t.save
  	redirect_to :back
  end
end
