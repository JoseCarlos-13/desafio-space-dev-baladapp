class AddOrbitalLaunchAttemptCountToLaunch < ActiveRecord::Migration[6.1]
  def change
    add_column :launches, :orbital_launch_attempt_count, :integer
  end
end
