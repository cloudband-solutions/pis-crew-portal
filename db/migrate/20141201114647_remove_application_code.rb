class RemoveApplicationCode < ActiveRecord::Migration
  def change
    remove_column :users, :application_code
  end
end
