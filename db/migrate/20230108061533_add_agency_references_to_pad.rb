class AddAgencyReferencesToPad < ActiveRecord::Migration[6.1]
  def change
    add_reference :pads, :agency, null: false, foreign_key: true
  end
end
