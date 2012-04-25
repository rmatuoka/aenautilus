class CreateCapacidadeFiltros < ActiveRecord::Migration
  def self.up
    create_table :capacidade_filtros do |t|
      t.decimal :vazao_min
      t.decimal :vazao_max
      t.string :modelo1
      t.string :modelo2
      t.decimal :vazao_nominal
      t.decimal :vazao_nominal2
      t.string :ralo_fundo
      t.string :motobomba
      t.string :motobomba2
      t.string :succao
      t.string :succao2
      t.decimal :recalque
      t.decimal :recalque2
      t.string :motobomba_aspiracao
      t.string :motobomba_aspiracao2
      t.string :tubulacao_succao
      t.string :tubulacao_succao
      t.string :prefiltro
      t.string :prefiltro2

      t.timestamps
    end
  end

  def self.down
    drop_table :capacidade_filtros
  end
end
