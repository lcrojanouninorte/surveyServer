class AddUseridToImiAnswers < ActiveRecord::Migration
  def change
    add_column :imi_answers, :user_id, :string
  end
end
