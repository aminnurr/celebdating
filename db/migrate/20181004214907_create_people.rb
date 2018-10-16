class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :full_name
      t.string :stage_name
      t.string :romanji_name
      t.string :proffession
      t.string :date_of_birth
      t.string :birthplace
      t.string :height
      t.string :weight
      t.string :star_sign
      t.string :bloodtype
      t.string :talent_agency

      t.timestamps
    end
  end
end
