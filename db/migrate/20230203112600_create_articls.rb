class CreateArticls < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :content
      t.string :date
      t.timestamps
    end
  end
end
