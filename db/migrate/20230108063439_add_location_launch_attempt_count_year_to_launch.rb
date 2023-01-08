class AddLocationLaunchAttemptCountYearToLaunch < ActiveRecord::Migration[6.1]
  def change
    add_column :launches, :location_launch_attempt_count_year, :integer
  end
end
