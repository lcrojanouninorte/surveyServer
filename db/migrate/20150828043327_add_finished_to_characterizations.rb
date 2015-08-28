class AddFinishedToCharacterizations < ActiveRecord::Migration
  def change
    add_column :characterizations, :finished, :boolean
  end
end
