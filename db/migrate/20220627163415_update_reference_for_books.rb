class UpdateReferenceForBooks < ActiveRecord::Migration[7.0]
  def up
    add_reference :books,:categories, foreign_key: true
    add_reference :books,:authors, foreign_key: true
  end

  def down

  end
end
