class CreatePrescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :prescriptions do |t|
      t.string :bc1
      t.string :bc2
      t.string :cf

      t.timestamps
    end
  end
end
