class CreateUrls < ActiveRecord::Migration[7.2]
  def change
    create_table :urls do |t|
      t.string :source
      t.string :target
      t.string :target_id

      t.timestamps
    end
    add_index :urls, :source, unique: true
    add_index :urls, :target_id, unique: true
  end
end
