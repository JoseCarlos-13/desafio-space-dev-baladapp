class AddLocationLaunchAttemptCountToLaunch < ActiveRecord::Migration[6.1]
  def change
    add_column :launches, :location_launch_attempt_count, :integer
  end
end
