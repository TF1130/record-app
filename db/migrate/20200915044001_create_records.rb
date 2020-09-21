class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :breakfast
      t.string :lunch
      t.string :dinner
      t.string :coffeebreak
      t.date :date
      t.timestamps
    end
  end
end