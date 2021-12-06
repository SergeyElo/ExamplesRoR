class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.string :key
      t.string :value
      t.references :dict, null: false, foreign_key: true

      t.timestamps
    end
  end
end
