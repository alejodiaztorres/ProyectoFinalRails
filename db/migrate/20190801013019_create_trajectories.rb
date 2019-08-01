class CreateTrajectories < ActiveRecord::Migration[5.2]
  def change
    create_table :trajectories do |t|
      t.date :debut
      t.references :player, foreign_key: true
      t.references :team, foreign_key: true
      t.string :position
      t.date :lastdate

      t.timestamps
    end
  end
end
