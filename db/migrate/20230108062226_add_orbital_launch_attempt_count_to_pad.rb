class AddOrbitalLaunchAttemptCountToPad < ActiveRecord::Migration[6.1]
  def change
    add_column :pads, :orbital_launch_attempt_count, :integer
  end
end
