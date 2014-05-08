class ComentariosController < ApplicationController
  before_action :set_comentario, only: [ :destroy ]
  before_action :usuario_logado, only: [ :create, :destroy, :new ]

  # POST /comentarios
  # POST /comentarios.json
  def create
    @comentario = current_user.comentarios.build(comentario_params)
    if @comentario.save
      flash[:success] = "Comentario salvo!"
    else
      flash[:danger] = "Comentario não foi salvo!"
    end
    redirect_to item_path(@comentario.item)
  end

  # DELETE /comentarios/1
  # DELETE /comentarios/1.json
  def destroy
    if @comentario.destroy
      flash[:success] = "Comentario excluido com sucesso!"
    else
      flash[:danger] = "Comentario não foi excluido corretamente!"
    end
      redirect_to item_path(@comentario.item)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comentario
      @comentario = Comentario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comentario_params
      params.require(:comentario).permit(:item_id, :comentario)
    end
end
