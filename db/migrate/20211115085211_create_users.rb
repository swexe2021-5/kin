class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :age
      t.string :gender
      t.string :local

      t.timestamps
    end
  end
end
