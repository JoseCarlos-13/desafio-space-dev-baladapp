class AddPadReferencesToLocation < ActiveRecord::Migration[6.1]
  def change
    add_reference :locations, :pad, null: false, foreign_key: true
  end
end
