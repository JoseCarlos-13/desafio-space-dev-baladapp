class AddLaunchReferencesToStatus < ActiveRecord::Migration[6.1]
  def change
    add_reference :statuses, :launch, null: false, foreign_key: true
  end
end
