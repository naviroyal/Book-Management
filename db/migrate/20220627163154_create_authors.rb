class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :phn_no
      t.datetime :birth_date
      t.datetime :death_date
      t.timestamps
    end
  end
end
