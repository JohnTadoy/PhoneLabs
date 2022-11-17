class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :apple
      t.string :samsung
      t.string :nokia
      t.string :redmi
      t.string :realmi
      t.string :oppo

      t.timestamps
    end
  end
end
