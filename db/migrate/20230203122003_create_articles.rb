class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :date
      t.string :category
      t.string :body
      t.string :author
      t.timestamps
    end
  end
end
