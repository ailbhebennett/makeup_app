class CreateMakeups < ActiveRecord::Migration[6.0]
  def change
    create_table :makeups do |t|
      t.string :name
      t.string :colour
      t.string :rating

      t.timestamps
    end
  end
end
