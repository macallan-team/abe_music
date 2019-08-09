class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
    	t.integer	:user_id, null: false, default: ""
    	t.integer	:item_id, null: false, default: ""
    	t.string	:name, null: false, default: ""
    	t.text	:comment, null: false, default: ""
      t.timestamps
    end
  end
end
