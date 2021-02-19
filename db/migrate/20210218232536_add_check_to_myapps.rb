class AddCheckToMyapps < ActiveRecord::Migration[6.1]
  def change
    add_column :myapps, :check, :boolean
  end
end
