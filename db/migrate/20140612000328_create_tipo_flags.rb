class CreateTipoFlags < ActiveRecord::Migration
  def change
    create_table :tipo_flags do |t|
			t.column "descricao", :string, limit: 1000, unique: true
      t.timestamps
    end
    TipoFlag.create descricao: 'Spam'
    TipoFlag.create descricao: 'Duplicado'
    TipoFlag.create descricao: 'Ofensivo'
    TipoFlag.create descricao: 'Off-Topic'
    TipoFlag.create descricao: 'Erro na Imagem'
    TipoFlag.create descricao: 'Gênero inexistente'
    TipoFlag.create descricao: 'Item inexistente'
    TipoFlag.create descricao: 'Outro'
  end
end