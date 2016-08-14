class TodosController < ApplicationController
  def index
  	@user = User.find(params[:user_id])
  	@todos = @user.todos
  end
end
