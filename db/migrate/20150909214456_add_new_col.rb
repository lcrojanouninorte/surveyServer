class AddNewCol < ActiveRecord::Migration
  def change
  	 add_column :users, :prueba, :string
  end
end
