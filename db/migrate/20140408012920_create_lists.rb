class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
    	t.string    :name
    	t.text      :description
		t.datetime  :created_at

      t.timestamps
    end
  end
end
