class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.timestamp :date
      t.string :opponent
      t.string :home
      t.string :away
      t.string :homeImg
      t.string :awayImg
      t.string :score
      t.text :homeGoals
      t.text :awayGoals
      t.string :competition
      t.string :stadium
      t.string :tv

    end
  end
end
