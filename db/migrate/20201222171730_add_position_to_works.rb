class AddPositionToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :position, :string
  end
end
