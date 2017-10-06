class CreatePageviews < ActiveRecord::Migration
  def change
    create_table :pageviews do |t|
      t.integer :count

      t.timestamps null: false
    end
  end
end
