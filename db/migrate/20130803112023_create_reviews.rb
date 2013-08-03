class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :cupcake_id
      t.string :message
      t.string :reviewer

      t.timestamps
    end
  end
end
