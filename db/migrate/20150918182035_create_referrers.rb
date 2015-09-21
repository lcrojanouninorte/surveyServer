class CreateReferrers < ActiveRecord::Migration
  def change
    create_table :referrers do |t|
      t.string :user_id
      t.string :nombre
      t.string :empresa
      t.string :mail
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
