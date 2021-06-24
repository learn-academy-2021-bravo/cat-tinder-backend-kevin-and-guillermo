class CreateHeros < ActiveRecord::Migration[6.1]
  def change
    create_table :heros do |t|
      t.string :name
      t.integer :age
      t.text :enjoys
      t.text :superpower

      t.timestamps
    end
  end
end
