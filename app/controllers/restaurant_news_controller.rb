class RestaurantNewsController < ApplicationController
  before_action :set_restaurant_news, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_news
  def index
    @restaurant_news = RestaurantNew.all
  end

  # GET /restaurant_news/1
  def show
  end

  # GET /restaurant_news/new
  def new
    @restaurant_news = RestaurantNew.new
  end

  # GET /restaurant_news/1/edit
  def edit
  end

  # POST /restaurant_news
  def create
    @restaurant_news = RestaurantNew.new(restaurant_news_params)

    if @restaurant_news.save
      redirect_to @restaurant_news, notice: 'Restaurant new was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /restaurant_news/1
  def update
    if @restaurant_news.update(restaurant_news_params)
      redirect_to @restaurant_news, notice: 'Restaurant new was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /restaurant_news/1
  def destroy
    @restaurant_news.destroy
    redirect_to restaurant_news_url, notice: 'Restaurant new was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_news
      @restaurant_news = RestaurantNew.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_news_params
      params.require(:restaurant_news).permit(:name, :address, :stars)
    end
end
