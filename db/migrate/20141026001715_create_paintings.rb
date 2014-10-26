class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :label
      t.text :canvas
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
