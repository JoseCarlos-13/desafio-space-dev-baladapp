class AddTotalLaunchCountToLocation < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :total_launch_count, :integer
  end
end
