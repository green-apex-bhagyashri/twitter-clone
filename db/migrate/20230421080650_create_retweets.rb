class CreateRetweets < ActiveRecord::Migration[6.1]
  def change
    create_table :retweets do |t|
      t.text :content
      t.integer :user_id
      t.references :tweet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
