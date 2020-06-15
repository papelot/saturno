class CreateRicette < ActiveRecord::Migration[6.0]
  def change
    create_table :ricette do |t|
      t.string :regione
      t.string :numero
      t.string :codicefiscale
      t.references :lista, null: false, foreign_key: true

      t.timestamps
    end
  end
end
