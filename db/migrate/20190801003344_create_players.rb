class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.float :height
      t.float :weight
      t.string :nationality
      t.date :birthdate

      t.timestamps
    end
  end
end
