class CreateDicts < ActiveRecord::Migration[6.1]
  def change
    create_table :dicts do |t|
      t.string :name
      t.string :condition

      t.timestamps
    end
  end
end
