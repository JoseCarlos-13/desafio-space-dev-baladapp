class AddLaunchReferencesToPad < ActiveRecord::Migration[6.1]
  def change
    add_reference :pads, :launch, null: false, foreign_key: true
  end
end
