require_dependency 'application_controller'

class ImovelMoradorsController < ApplicationController
  before_action :set_imovel
  before_action :set_morador, only: %i[edit update destroy show]

  def index
    @imovel_morador = ::ImovelMorador.all
  end

  def new
    @imovel_morador = @imovel.imovel_moradors.new
  end

  def create
    @imovel_morador = @imovel.imovel_moradors.new(set_params)
    if @imovel_morador.save
      redirect_to moradors_path
    else
      render action: :new
    end
  end

  def destroy
    if @imovel_morador.destroy
      redirect_to moradors_path
    end
  end

  def show
  end

  private

  def set_params
    params.require(:imovel_morador).permit(:cpf, :processo)
  end

  def set_imovel
    @imovel = Imovel.find(params[:imovel_id])
  end

  def set_morador
    @imovel_morador = Morador.find(params[:id])
  end
end
