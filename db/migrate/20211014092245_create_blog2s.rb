class CreateBlog2s < ActiveRecord::Migration[6.1]
  def change
    create_table :blog2s do |t|
      t.string :title
      t.string :author
      t.text :content

      t.timestamps
    end
  end
end
