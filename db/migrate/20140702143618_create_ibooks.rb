class CreateIbooks < ActiveRecord::Migration
  def change
    create_table :ibooks do |t|
      t.string :name
      t.string :idea

      t.timestamps
    end
  end
end
