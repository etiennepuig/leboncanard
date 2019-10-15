class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
    add_reference :articles, :category, foreign_key: true
    add_reference :articles, :user, foreign_key: true
    add_column :articles, :image, :string
  end
end
