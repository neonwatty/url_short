class CreateUrls < ActiveRecord::Migration[7.2]
  def change
    create_table :urls do |t|
      t.string :source, index: { unique: true, name: 'unique_source' }
      t.string :target, unique: true

      t.timestamps
    end
  end
end
