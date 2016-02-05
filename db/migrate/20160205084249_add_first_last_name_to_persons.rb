class AddFirstLastNameToPersons < ActiveRecord::Migration
  def change
    add_column :people, :first_name, :string
    add_column :people, :last_name, :string
    add_column :people, :role, :string
  end
end
