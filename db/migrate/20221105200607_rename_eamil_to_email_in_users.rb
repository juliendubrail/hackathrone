class RenameEamilToEmailInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :eamil, :email
  end
end
