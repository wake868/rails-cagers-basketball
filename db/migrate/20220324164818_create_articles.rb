class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :slug
      t.integer :rank
      t.text :body
      t.string :blurb

      t.timestamps
    end
  end
end
