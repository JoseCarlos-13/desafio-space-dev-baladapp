class AddLaunchReferencesToLaunchServiceProvider < ActiveRecord::Migration[6.1]
  def change
    add_reference :launch_service_providers, :launch, null: false, foreign_key: true
  end
end
