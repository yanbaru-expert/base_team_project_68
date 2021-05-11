class TasksController < ApplicationController
  def new
    @task = task.new
  end
end
