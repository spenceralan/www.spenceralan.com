class Portfolio < ActiveRecord::Migration[5.1]
  def change
    create_table :projects, id: :uuid do |t|
      t.string :title
      t.string :link
      t.integer :year
      t.string :description
      t.integer :order
      t.boolean :visible

      t.uuid :admin_id
      t.timestamps
    end
    add_attachment :projects, :screenshot
  end
end
