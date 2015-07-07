class MainController < ApplicationController
  def index
  end
  def create
  	Todo.create(text: params[:form], project_id: params[:slct])
  	render 'main/index'
  end
  def update
  		puts params
		t = Todo.find(params[:id])
		t.isCompleted = !(Todo.find(params[:id]).isCompleted)
		t.save
  		render 'main/index'
  end
end
