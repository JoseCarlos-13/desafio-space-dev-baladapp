class AddAgencyLaunchAttemptCountYearToLaunch < ActiveRecord::Migration[6.1]
  def change
    add_column :launches, :agency_launch_attempt_count_year, :integer
  end
end
