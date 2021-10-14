class OutfitsController < ApplicationController
  before_action :set_outfit, only: [:show, :edit, :update, :destroy]

    def index
          if params[:query].present?
            @query = params[:query]
            @outfits = Outfit.where("title LIKE ?","%#{params[:query]}%")
          else
            @outfits = Outfit.all
          end
        end
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
    
    def show
    end

    def edit
    end

    def update
      @outfit.update(outfit_params)
      redirect_to outfit_path(@outfit)
    end
  
    def destroy
      @outfit.destroy
      redirect_to outfits_path
    end

    private

  def set_outfit
    @outfits = Outfit.find(params[:id])
  end

  def outfit_params
    params.require(:outfit).permit(:title, :category, :description, :price, :user_id)
  end

end
