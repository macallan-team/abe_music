class AddLastNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name, :string, null: false, default: ""
    add_column :users, :first_name, :string, null: false,default: ""
    add_column :users, :last_kana, :string, null: false, default: ""
    add_column :users, :first_kana, :string, null: false, default: ""
    add_column :users, :postal_code, :string, null: false, default: ""
    add_column :users, :address, :string, null: false, default: ""
    add_column :users, :tel, :string, null: false, default: ""
  end
end
