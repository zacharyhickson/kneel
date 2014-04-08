class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :list_id
      t.string :name
      t.boolean :answered

      t.timestamps
    end
  end
end
