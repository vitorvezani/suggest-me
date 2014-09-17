class AvaliacoesController < ApplicationController
  before_action :set_avaliacao, only: [:destroy]

  # POST /avaliacoes
  # POST /avaliacoes.json
  def create_update

    @avaliacao = Avaliacao.find_or_create_by(item_id: params[:avaliacao][:item_id], usuario_id: current_user.id)

    @avaliacao.avaliacao = params[:avaliacao][:avaliacao]
    
    # TODO, colocar um if
    if @avaliacao.save

      @positivas = Avaliacao.where(item_id: @avaliacao.item.id, avaliacao: true).size
      @negativas = Avaliacao.where(item_id: @avaliacao.item.id, avaliacao: false).size

      respond_to do |format|
        format.html { 
          flash[:success] = @avaliacao.avaliacao ? "Você curtiu #{@avaliacao.item.nome_ptbr}!" : "Você não curtiu #{@avaliacao.item.nome_ptbr}!"
          redirect_to item_path(@avaliacao.item) }
        format.js
      end
    else
      raise
    end

  end

  # DELETE /avaliacoes/1
  # DELETE /avaliacoes/1.json
  def destroy
    if @avaliacao.destroy
      flash[:success] = "Avaliação excluido com sucesso!"
    else
      flash[:danger] = "Avaliação não foi excluido corretamente!"
    end
      redirect_to item_path(@avaliacao.item)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avaliacao
      @avaliacao = Avaliacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avaliacao_params
      params.require(:avaliacao).permit(:item_id, :avaliacao)
    end
end
