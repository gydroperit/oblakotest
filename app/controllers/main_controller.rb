class MainController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    @Todos = Project.joins(:todos)
    respond_to do |format|

  format.html # show.html.erb
  format.json { render :json => @Todos }

 end
 puts @Todos
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
