require_dependency 'application_controller'

class MoradorsController < ApplicationController
  before_action :set_morador, only: %i[edit update destroy show]

  def index
    @moradors = ::Morador.all
  end

  def new
    @morador = Morador.new
  end

  def create
    @morador = Morador.new(set_params)
    if @morador.save
      redirect_to moradors_path
    else
      render action: :new
    end
  end

  def edit
  end

  def update
    if @morador.update(set_params)
    redirect_to moradors_path
    else
      render action: :edit
    end
  end

  def destroy
    if @morador.destroy
      redirect_to moradors_path
    end
  end

  def show
  end

  private

  def set_params
    params.require(:morador).permit(:nome, :cpf, :rg, :est_civil, :profissao, :nome_conjuge, :cpf_conjuge, :profissao_conjuge, :est_civil_conjuge)
  end

  def set_morador
    @morador = Morador.find(params[:id])
  end
end
