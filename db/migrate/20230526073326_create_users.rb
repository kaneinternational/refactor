class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.references :posts
      t.string :name
      t.string :email
      t.boolean :admin, default: false
      t.datetime :email_confirmed_at

      t.timestamps
    end
  end
end
