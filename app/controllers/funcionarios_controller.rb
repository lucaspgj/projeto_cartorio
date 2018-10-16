require_dependency 'application_controller'

class FuncionariosController < ApplicationController
  before_action :set_funcionario, only: %i[edit update destroy show]

  def index
    @funcionarios = ::Funcionario.all
  end

  def new
    @funcionario = Funcionario.new
  end

  def create
    @funcionario = Funcionario.new(set_params)
    if @funcionario.save
      redirect_to funcionarios_path
    else
      render action: :new
    end
  end

  def edit
  end

  def update
    if @funcionario.update(set_params)
    redirect_to funcionarios_path
    else
      render action: :edit
    end
  end

  def destroy
    if @funcionario.destroy
      redirect_to funcionarios_path
    else
      render action: :edit
    end
  end

  def show
  end

  private

  def set_params
    params.require(:funcionario).permit(:nome, :matricula)
  end

  def set_funcionario
    @funcionario = Funcionario.find(params[:id])
  end
end
