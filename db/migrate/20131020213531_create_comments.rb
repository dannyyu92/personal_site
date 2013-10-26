class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :article_id
      t.string :name
      t.text :body
      t.datetime :published_at

      t.timestamps
    end
  end
end
