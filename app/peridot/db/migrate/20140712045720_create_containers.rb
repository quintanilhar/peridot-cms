class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.string :label
      t.text :content
      t.references :page, index: true

      t.timestamps
    end
  end
end
