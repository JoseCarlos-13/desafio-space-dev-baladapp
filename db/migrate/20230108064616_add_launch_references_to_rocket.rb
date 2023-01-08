class AddLaunchReferencesToRocket < ActiveRecord::Migration[6.1]
  def change
    add_reference :rockets, :launch, null: false, foreign_key: true
  end
end
