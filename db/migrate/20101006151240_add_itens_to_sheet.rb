class AddItensToSheet < ActiveRecord::Migration
  def self.up
    add_column :sheets, :largura, :decimal
  end

  def self.down
    remove_column :sheets, :largura
  end
end
