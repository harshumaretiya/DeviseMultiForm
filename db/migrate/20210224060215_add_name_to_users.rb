class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :website, :string
    add_column :users, :mob_no, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :skills, :string
    add_column :users, :passion, :string
    add_column :users, :description, :string
  end
end
