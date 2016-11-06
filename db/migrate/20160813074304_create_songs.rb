class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
    	t.string :title
    	t.text :background
    	t.text :lyrics
    	t.string :url

    end
  end
end
