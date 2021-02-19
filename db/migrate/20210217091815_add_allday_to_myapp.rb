class AddAlldayToMyapp < ActiveRecord::Migration[6.1]
  def change
    add_column :myapps, :allday, :string
  end
end
