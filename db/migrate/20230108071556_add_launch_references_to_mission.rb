class AddLaunchReferencesToMission < ActiveRecord::Migration[6.1]
  def change
    add_reference :missions, :launch, null: false, foreign_key: true
  end
end
