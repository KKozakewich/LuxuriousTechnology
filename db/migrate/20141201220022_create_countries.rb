class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :currency_abbreviation
      t.decimal :multiplied_against_CAD_for_currency_value_comparisons

      t.timestamps
    end
  end
end
