class RemovePasswordDigestFromUsuarios < ActiveRecord::Migration[6.0]
  def change
    remove_column :usuarios, :password_digest, :string
  end
end
