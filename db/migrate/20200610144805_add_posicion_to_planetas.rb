class AddPosicionToPlanetas < ActiveRecord::Migration[6.0]
  def change
    add_column :planetas, :posicion, :int
  end
end
