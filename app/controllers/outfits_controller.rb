class OutfitsController < ApplicationController
    def index
        @outfits = Outfit.all
    end
     
    def new
        @outfit = Outfit.new
    end
    
    def create
        @outfit = Outfit.new(outfit_params)
        if @outfit.save
          redirect_to outfit_path(@outfit)
        else
          render :new
        end
      end

    private

  def set_list
    @outfits = Outfit.find(params[:id])
  end

  def outfit_params
    params.require(:outfit).permit(:title, :category, :description, :price, :user_id)
  end

end
