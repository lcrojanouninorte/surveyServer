class AddTelToReferrers < ActiveRecord::Migration
  def change
    add_column :referrers, :tel, :string
  end
end
