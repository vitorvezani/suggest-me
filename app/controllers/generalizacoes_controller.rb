class GeneralizacoesController < ApplicationController
  before_action :set_generalizacao, only: [ :destroy, :edit ]
  before_action :usuario_logado?, only: [ :create, :destroy, :new ]

  # GET /generalizacoes/1/edit
  def edit
  end

  # POST /generalizacoes
  # POST /generalizacoes.json
  def create
    @generalizacao = Generalizacao.new(generalizacao_params)
    if @generalizacao.save
      flash[:success] = "Genero foi relacionado com sucesso!"
    else
      flash[:danger] = "Genero não foi relacionado com sucesso!"
    end
    redirect_to item_path(@generalizacao.item)
  end

  # DELETE /generalizacoes/1
  # DELETE /generalizacoes/1.json
  def destroy_all
    relacionamentos = Generalizacao.where("item_id = ? and genero_id = ?", params[:item_id], params[:genero_id])
    
    relacionamentos.each do |relacao| 
      relacao.destroy 
    end
    flash[:success] = "Relacionamentos excluida com sucesso!"
    redirect_to item_path(params[:item_id])
  end

  # DELETE /generalizacoes/1
  # DELETE /generalizacoes/1.json
  def destroy
    if @generalizacao.destroy
      flash[:success] = "Relacionamento excluida com sucesso!"
    else
      flash[:danger] = "Relacionamento não foi excluida corretamente!"
    end
      redirect_to item_path(@generalizacao.item)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generalizacao
      @generalizacao = Generalizacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generalizacao_params
      params.require(:generalizacao).permit(:item_id, :genero_id)
    end
end
