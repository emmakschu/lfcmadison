class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :team
      t.integer :played
      t.integer :won
      t.integer :drawn
      t.integer :lost
      t.integer :points
      t.integer :goalsFor
      t.integer :goalsAgainst
      t.integer :goalDiff
    end
  end
end
