class AddAgencyLaunchAttemptCountToLaunch < ActiveRecord::Migration[6.1]
  def change
    add_column :launches, :agency_launch_attempt_count, :integer
  end
end
