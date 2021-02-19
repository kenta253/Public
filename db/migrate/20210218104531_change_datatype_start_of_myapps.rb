class ChangeDatatypeStartOfMyapps < ActiveRecord::Migration[6.1]
  def change
    change_column :myapps, :start, :string
    change_column :myapps, :finish, :string
  end
end
