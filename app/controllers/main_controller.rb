class MainController < ApplicationController
  protect_from_forgery with: :null_session
 def index
 end

   def todo
    @Todos = Todo.all.where(project_id: params[:id] )
    respond_to do |format|
      format.html
      format.json { render :json => @Todos}

      end
  end
  def create
  	Todo.create(text: params[:form], project_id: params[:slct])
  	redirect_to :back
  end
  def project
    @Project = Project.all
    respond_to do |format|
      format.json { render :json => @Project }
    end
  end
  def update
  		puts params
		t = Todo.find(params[:id])
		t.isCompleted = !(Todo.find(params[:id]).isCompleted)
		t.save
  	redirect_to :back
  end
end
