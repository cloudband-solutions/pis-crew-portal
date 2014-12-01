class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column(:users, :first_name, :string)
    add_column(:users, :middle_name, :string)
    add_column(:users, :last_name, :string)
    add_column(:users, :identification_number, :string)
    add_column(:users, :application_code, :string)
  end
end
