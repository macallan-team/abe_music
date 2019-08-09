class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
		t.string   :album, null: false, default: ""
		t.string   :image_id, null: false, default: ""
		t.string   :price, null: false, default: ""
		t.string   :stock, null: false, default: ""
		t.integer	:sales_status, null: false, default: 0
		t.integer	:category_id, null: false, default: ""
		t.integer	:label_id, null: false, default: ""

      t.timestamps
    end
  end
end
