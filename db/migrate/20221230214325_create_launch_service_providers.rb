class CreateLaunchServiceProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :launch_service_providers do |t|
      t.string :url
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
