class FavoritesController < ProtectedController
  before_action :set_favorite, only: [:show, :update, :destroy]

  def set_favorite
    @favorite = current_user.favorites.find(params[:id])
  end

  def favorite_params
    params.require(:favorite).permit(:title)
  end

  # def edit_plate_params
  #   params.require(:cheese).permit(:id)
  # end

  # GET /favorites
  # GET /favorites.json
  def index
    @favorites = current_user.favorites.all
    # @favorites = Favorite.all

    render json: @favorites
  end

  # GET /favorites/1
  # GET /favorites/1.json
  def show
    # render json: @favorite
    render json: Favorite.find(params[:id])
  end

  # POST /favorites
  # POST /favorites.json
  def create
    # @favorite = Favorite.new(favorite_params)

    # @user = User.find_by id: params['user_id']
    # @artwalk = Artwalk.find_by id: params['artwalk_id']

    @favorite = current_user.favorites.build(favorite_params)

    if @favorite.save
      render json: @favorite, status: :created
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorites/1
  # PATCH/PUT /favorites/1.json
  def update
    # @favorite = Favorite.find(params[:id])

    if @favorite.update(favorite_params)
      head :no_content
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    @favorite.destroy

    head :no_content
  end

  private

    # def set_favorite
    #   @favorite = Favorite.find(params[:id])
    # end
    #
    # def favorite_params
    #   params.require(:favorite).permit(:artwalk_id, :user_id, :title)
    # end
end
