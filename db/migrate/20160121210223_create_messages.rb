class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text :content
      t.string :user
      t.string :user_email

      t.timestamps null: false
    end
  end
end
