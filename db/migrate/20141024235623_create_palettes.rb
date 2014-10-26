class CreatePalettes < ActiveRecord::Migration
  def change
    create_table :palettes do |t|
      t.string :label
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
