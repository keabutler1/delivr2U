class AddMoreColumnsToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :date, :time, :image
  end
end
