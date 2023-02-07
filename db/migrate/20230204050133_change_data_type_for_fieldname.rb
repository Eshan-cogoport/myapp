class ChangeDataTypeForFieldname < ActiveRecord::Migration[7.0]
  def change
    change_column(:articles, :date, :date)
  end
end
