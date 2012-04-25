class CreateSheets < ActiveRecord::Migration
  def self.up
    create_table :sheets do |t|
      t.string :cliente
      t.string :endereco
      t.integer :comprimento
      t.integer :profundidade_minima
      t.integer :profundidade_max
      t.integer :uso_piscina
      t.integer :temperatura_desejada
      t.integer :utilizacao_ano
      t.integer :utilizacao_mes
      t.integer :tipo_construcao
      t.integer :capa_termica
      t.integer :velocidade_vento
      t.integer :temperatura_ambiente
      t.decimal :custo_energia
      t.decimal :custo_glp
      t.decimal :custo_gn
      t.decimal :custo_diesel

      t.timestamps
    end
  end

  def self.down
    drop_table :sheets
  end
end
