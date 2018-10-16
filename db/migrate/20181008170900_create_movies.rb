class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :title_romaji
      t.string :title_English
      t.string :also_known_as
      t.string :genre
      t.string :episodes
      t.string :format
      t.string :broadcast_network
      t.string :broadcast_period
      t.string :air_time
      t.string :viewrship_rating
      t.string :theme_song
      t.string :broadcast_year
      t.string :tagline
      t.string :cantonese_mandarin_title

      t.timestamps
    end
  end
end
