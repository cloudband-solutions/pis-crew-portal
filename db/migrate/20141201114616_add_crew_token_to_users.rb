class AddCrewTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :crew_token, :string
  end
end
