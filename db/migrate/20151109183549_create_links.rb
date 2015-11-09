class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :link
      t.text :summary

      t.timestamps null: false
    end
  end
end
