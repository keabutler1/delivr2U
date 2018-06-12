class AddDescriptionToRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :muscle_with_truck
    remove_column :requests, :muscle_only
    remove_column :requests, :flower_delivery
    remove_column :requests, :goodwill_delivery
    add_column :requests, :description, :string
  end
end
