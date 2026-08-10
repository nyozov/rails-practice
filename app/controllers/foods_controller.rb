class FoodsController < ApplicationController
    before_action :require_login
    def index
        @foods = current_user.foods.where(deleted_at: nil)
        @food = Food.new

        @total_calories = @foods.sum(:calories)
    end

    def create
        @food = current_user.foods.build(food_params)

        if @food.save
            redirect_to foods_path

        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        food = current_user.foods.find(params[:id])
        food.update(deleted_at: Time.current)

        redirect_to foods_path
    end

    private

    def food_params

        params.require(:food).permit(
            :name,
            :calories
        )

    end
end
