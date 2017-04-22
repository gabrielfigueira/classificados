class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.references :category, index: true, foreign_key: true
      t.references :member, index: true, foreign_key: true
      t.string :title, limit: 255
      t.text :description

      t.timestamps
    end
  end
end
