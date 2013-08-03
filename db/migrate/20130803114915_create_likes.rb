class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :review_id
      t.string :liker

      t.timestamps
    end
  end
end
