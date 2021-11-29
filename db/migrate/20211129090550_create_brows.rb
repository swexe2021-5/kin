class CreateBrows < ActiveRecord::Migration[5.2]
  def change
    create_table :brows do |t|
      t.string :post_id
      t.string :name

      t.timestamps
    end
  end
end
