class CreateRedirects < ActiveRecord::Migration
  def change
    create_table :redirects do |t|
      t.string :name, unique: true, null: false
      t.text :url, null: false
      t.text :facebook_js
      t.text :perfect_audience_js
      t.text :adroll_js
      t.text :other_js

      t.timestamps null: false
    end
  end
end
