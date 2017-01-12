class ArtwalksController < ApplicationController
  before_action :set_artwalk, only: [:show, :update, :destroy]

  # GET /artwalks
  # GET /artwalks.json
  def index
    @artwalks = Artwalk.all

    render json: @artwalks
  end

  # GET /artwalks/1
  # GET /artwalks/1.json
  def show
    render json: @artwalk
  end

  # POST /artwalks
  # POST /artwalks.json
  def create
    @artwalk = Artwalk.new(artwalk_params)

    if @artwalk.save
      render json: @artwalk, status: :created, location: @artwalk
    else
      render json: @artwalk.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artwalks/1
  # PATCH/PUT /artwalks/1.json
  def update
    @artwalk = Artwalk.find(params[:id])

    if @artwalk.update(artwalk_params)
      head :no_content
    else
      render json: @artwalk.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artwalks/1
  # DELETE /artwalks/1.json
  def destroy
    @artwalk.destroy

    head :no_content
  end

  private

    def set_artwalk
      @artwalk = Artwalk.find(params[:id])
    end

    def artwalk_params
      params.require(:artwalk).permit(:title, :length)
    end
end
