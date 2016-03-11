class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :username
      t.text :content
      t.references :blog, foreign_key: true

      t.timestamps
    end
  end
end
