class AddPasswordToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :password_digest, :string
  end
end
