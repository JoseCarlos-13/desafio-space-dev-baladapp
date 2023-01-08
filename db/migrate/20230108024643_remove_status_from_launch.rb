class RemoveStatusFromLaunch < ActiveRecord::Migration[6.1]
  def change
    remove_column :launches, :status
  end
end
