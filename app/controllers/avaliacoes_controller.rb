class AvaliacoesController < ApplicationController
  before_action :set_avaliacao, only: [:destroy]

  # POST /avaliacoes
  # POST /avaliacoes.json
  def create
    @avaliacao = current_user.avaliacoes.build(avaliacao_params)

    if @avaliacao.save
      flash[:success] = @avaliacao.avaliacao == 1 ? "Você curtiu #{@avaliacao.item.nome_ptbr}!" : "Você não curtiu #{@avaliacao.item.nome_ptbr}!"
    else
      flash[:danger] = "Avaliação não foi salvo!"
    end
    redirect_to item_path(@avaliacao.item)
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
