class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.belongs_to :blog_post

      t.timestamps
    end
  end
end
