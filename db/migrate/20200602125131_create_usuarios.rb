class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :username
      t.string :password_digest

      t.timestamps
    end
    add_index :usuarios, :username, unique: true
  end
end
