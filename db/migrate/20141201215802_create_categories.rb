class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :description
      t.boolean :enabled
      t.boolean :top_level_category

      t.timestamps
    end
  end
end
