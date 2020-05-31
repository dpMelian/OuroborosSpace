class CreateNoticias < ActiveRecord::Migration[6.0]
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.text :contenido

      t.timestamps
    end
  end
end
