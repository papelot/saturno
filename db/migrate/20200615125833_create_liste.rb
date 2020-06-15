class CreateListe < ActiveRecord::Migration[6.0]
  def change
    create_table :liste do |t|
      t.string :tipo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
