class HerosController < ApplicationController
    def index
        heros = Hero.all
        render json: heros 
    end
    def create
        hero = Hero.create(hero_params)
        if hero.valid? 
        render json: hero
        else 
            render json: hero.errors, status: 422 
        end
    end
    def update

    end
    def destroy
        hero = Hero.find(params[:id])
        hero.destroy
        render json: hero
    end
    private
    def hero_params
        params.require(:hero).permit(:name, :picture,
            :age, :enjoys, :superpower)
        
    end
end
