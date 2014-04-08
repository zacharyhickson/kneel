class CreateListsCategories < ActiveRecord::Migration
  def change
    create_table :lists_categories do |t|
    	t.references :list
		t.references :category
    end
  end
end
