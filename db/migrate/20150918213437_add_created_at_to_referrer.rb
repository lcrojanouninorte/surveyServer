class AddCreatedAtToReferrer < ActiveRecord::Migration
  def change
    add_column :referrers, :created_at, :date
    add_column :referrers, :updated_at, :date
  end
end
