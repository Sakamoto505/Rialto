class BulletinsController < ApplicationController
  before_action :set_bulletin, only: %i[edit update destroy show]

  def index
    @bulletins = Bulletin.all
  end

  def new
    @bulletin = Bulletin.new
  end

  def create
    @bulletin = Bulletin.new(bulletin_params)
    if @bulletin.save
      redirect_to @bulletin, notice: 'Объявление успешно создано.'
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @bulletin.update(bulletin_params)
      redirect_to @bulletin
    else
      render 'edit'
    end
  end

  def destroy
    @bulletin.destroy
      redirect_to bulletins_path
  end


  def show
  end

  private

  def set_bulletin
    @bulletin = Bulletin.find(params[:id])
  end

  def bulletin_params
    params.require(:bulletin).permit(:title, :description, :price)
  end
end
