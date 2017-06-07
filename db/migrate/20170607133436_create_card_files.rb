class CreateCardFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :card_files do |t|
      t.string :name
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
