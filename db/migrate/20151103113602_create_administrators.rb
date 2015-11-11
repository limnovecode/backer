class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :slug
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :authentication_token
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.boolean :sudo, default: false

      t.timestamps null: false
    end
    add_index :administrators, :slug, unique: true
    add_index :administrators, :email, unique: true
    add_index :administrators, :reset_password_token, unique: true
  end
end
