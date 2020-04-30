class AddUserIdToTweeets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweeets, :user_id, :integer
  end
end
