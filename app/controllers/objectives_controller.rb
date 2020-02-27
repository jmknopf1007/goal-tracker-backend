class ObjectivesController < ApplicationController

    # def index 
    #     objectives = Objective.all
    #     render :json => objectives
    # end 

    # def show 
    #     objective = Objective.find(params[:id])
    #     render :json => objective
    # end 

    def create 
        objective = Objective.create(objective_params)
        render :json => objective

    end 

    def update
        objective = Objective.find(params[:id])
        objective.update(objective_params)
        render :json => objective
    end 

    def destroy
        objective = Objective.find(params[:id])
        objective.destroy
        render :json => {status: 'deleted'}
    end
    
    # def objective_goals
    #     objective = Objective.find(params[:id])
    #     goals = objective.goals
    #     render :json => {goals: goals}
    # end

    private

    def objective_params
      params.require(:objective).permit(:title, :user_id)
    end

end
