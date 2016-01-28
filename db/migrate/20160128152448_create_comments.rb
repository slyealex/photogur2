class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :message
      t.belongs_to :picture, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
