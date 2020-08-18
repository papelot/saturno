class CreateListe < ActiveRecord::Migration[6.0]
  def change
    create_table :liste do |t|
      t.text :file
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
     add_index :liste, [:user, :created_at]
  end
end
