class AddPictureToHeros < ActiveRecord::Migration[6.1]
  def change
    add_column :heros, :picture, :string
  end
end
