class CreateDinners < ActiveRecord::Migration[6.0]
  def change
    create_table :dinners do |t|

      t.timestamps
    end
  end
end
