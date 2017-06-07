class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :English
      t.string :Japanese
      t.boolean :weak
      t.references :card_file, foreign_key: true

      t.timestamps
    end
  end
end
