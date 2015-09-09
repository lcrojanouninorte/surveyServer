class AddPrueba3ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :prueba3, :string
  end
end
