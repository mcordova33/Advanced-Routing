class CreateReviewNews < ActiveRecord::Migration[6.1]
  def change
    create_table :review_news do |t|
      t.integer :rating
      t.string :content
      t.references :restaurant_new, null: false, foreign_key: true

      t.timestamps
    end
  end
end
