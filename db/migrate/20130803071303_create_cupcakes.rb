class CreateCupcakes < ActiveRecord::Migration
  def change
    create_table :cupcakes do |t|
      t.string :flavour
      t.float :price

      t.timestamps
    end
  end
end
