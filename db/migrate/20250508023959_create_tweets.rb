class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|
      t.references :user, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
