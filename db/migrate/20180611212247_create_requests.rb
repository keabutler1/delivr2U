class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :destination
      t.string :muscle_with_truck
      t.string :muscle_only
      t.string :flower_delivery
      t.string :goodwill_delivery
      t.string :delivery_date
      t.string :delivery_time

      t.timestamps
    end
  end
end
