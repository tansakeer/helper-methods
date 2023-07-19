class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :rating
      t.date :dob

      t.timestamps
    end
  end
end
