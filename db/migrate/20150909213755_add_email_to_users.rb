class AddEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :prueba2, :string
  end
end
