class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :phone
      t.timestamps
    end
  end
end
