class HerosController < ApplicationController
    def index
        heros = Hero.all
        render json: heros 
    end
    def create
        hero = Hero.create(hero_params)
        render json: hero

    end
    def update

    end
    def destroy
        
    end
    private
    def hero_params
        params.require(:hero).permit(:name,
            :age, :enjoys, :superpower)
        
    end
end
