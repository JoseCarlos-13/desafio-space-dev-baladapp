class AddTotalLaunchCountToPad < ActiveRecord::Migration[6.1]
  def change
    add_column :pads, :total_launch_count, :integer
  end
end
