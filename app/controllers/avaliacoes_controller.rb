class AvaliacoesController < ApplicationController
  before_action :set_avaliacao, only: [:destroy]

  # POST /avaliacoes
  # POST /avaliacoes.json
  def create_update

    old_avaliacao = Avaliacao.where("item_id = ? and usuario_id = ? ", params[:avaliacao][:item_id], current_user.id).first

    puts @old_avaliacao.inspect

    if old_avaliacao.nil?
      # Nova avaliação
      @avaliacao = current_user.avaliacoes.build(avaliacao_params)

      if @avaliacao.save
        flash[:success] = @avaliacao.avaliacao ? "Você curtiu #{@avaliacao.item.nome_ptbr}!" : "Você não curtiu #{@avaliacao.item.nome_ptbr}!"
      else
        flash[:danger] = "Avaliação não foi salvo!"
      end
      redirect_to item_path(@avaliacao.item)
    else
      #update da avaliacao
      if old_avaliacao.avaliacao == params[:avaliacao][:avaliacao]# avaliacao igual
        flash[:danger] = "Você já avaliou está opção!"
      else
        if old_avaliacao.update(avaliacao: params[:avaliacao][:avaliacao])
          flash[:success] = old_avaliacao.avaliacao ? "Você curtiu #{old_avaliacao.item.nome_ptbr}!" : "Você não curtiu #{old_avaliacao.item.nome_ptbr}!"
        else 
          flash[:danger] = "Avaliação não foi salvo!"
        end
      end
      redirect_to item_path(old_avaliacao.item)
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
