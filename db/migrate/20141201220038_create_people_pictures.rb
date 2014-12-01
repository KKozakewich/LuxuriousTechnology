class CreatePeoplePictures < ActiveRecord::Migration
  def change
    create_table :people_pictures do |t|
      t.string :file_name

      t.timestamps
    end
  end
end
