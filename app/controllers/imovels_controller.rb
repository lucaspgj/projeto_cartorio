require_dependency 'application_controller'

class ImovelsController < ApplicationController
  before_action :set_imovel, only: %i[edit update destroy show]

  def index
    @imovels = Imovel.all
  end

  def new
    @imovel = Imovel.new
  end

  def create
    @imovel = Imovel.new(set_params)
    if @imovel.save
      redirect_to imovels_path
    else
      render action: :new
    end
  end

  def edit
  end

  def update
    if @imovel.update(set_params)
    redirect_to imovels_path
    else
      render action: :edit
    end
  end

  def destroy
    if @imovel.destroy
      redirect_to imovels_path
    else
      render action: :edit
    end
  end

  def show
  end

  private

  def set_params
    params.require(:imovel).permit(:endereco, :iptu, :area, :matricula, :cidade, :ato_declaratorio)
  end

  def set_imovel
    @imovel = Imovel.find(params[:id])
  end
end
