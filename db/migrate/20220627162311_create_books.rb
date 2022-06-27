class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :publisher
      t.datetime :publish_date
      t.integer :price
      t.integer :sold_count
      t.timestamps
    end
  end
end
