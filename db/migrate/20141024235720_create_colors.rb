class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :value
      t.belongs_to :palette, index: true

      t.timestamps
    end
  end
end
