class CreatePlanetas < ActiveRecord::Migration[6.0]
  def change
    create_table :planetas do |t|
      t.string :nombre
      t.string :foto
      t.string :fecha_descubrimiento
      t.decimal :masa_en_tierras
      t.string :periodo_rotacion
      t.string :periodo_orbital
      t.decimal :gravedad

      t.timestamps
    end
  end
end
