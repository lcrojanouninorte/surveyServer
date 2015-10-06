class CreateInstAux1s < ActiveRecord::Migration
  def change
    create_table :inst_aux1s do |t|
      t.string :user_id
      t.datetime :created_at
      t.datetime :updated_at
      t.string :p1
      t.string :p2
      t.string :p3
      t.string :p4
      t.string :p5
      t.string :p6
      t.string :p7
      t.string :p8
      t.string :p9
      t.string :p10
      t.string :p11
      t.string :p12
      t.string :p13
      t.string :p14
      t.string :p15
      t.string :p16
      t.string :p17
      t.string :p18
      t.string :p19
      t.string :p20

      t.timestamps
    end
  end
end
