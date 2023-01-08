class AddTotalLandingCountToLocation < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :total_landing_count, :integer
  end
end
