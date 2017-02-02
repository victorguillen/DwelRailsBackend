class ChangeGroupsColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :groups, :landlord_id
    remove_column :groups, :tenant_id
    add_column :groups, :user1_id, :integer
    add_column :groups, :user2_id, :integer
  end
end
