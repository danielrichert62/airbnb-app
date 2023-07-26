class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :reservation_id
      t.decimal :rating
      t.text :comment

      t.timestamps
    end
  end
end
