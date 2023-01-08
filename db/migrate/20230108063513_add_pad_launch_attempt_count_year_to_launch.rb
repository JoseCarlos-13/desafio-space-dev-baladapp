class AddPadLaunchAttemptCountYearToLaunch < ActiveRecord::Migration[6.1]
  def change
    add_column :launches, :pad_launch_attempt_count_year, :integer
  end
end
