class CreateCoffeebreaks < ActiveRecord::Migration[6.0]
  def change
    create_table :coffeebreaks do |t|
      t.timestamps
    end
  end
end
