class CreateUrls < ActiveRecord::Migration[7.2]
  def change
    create_table :urls do |t|
      t.string :source, index: { name: 'unique_source' }
      t.string :target
      t.string :target_id, index: { name: 'unique_target_id' }

      t.timestamps
    end
  end
end
