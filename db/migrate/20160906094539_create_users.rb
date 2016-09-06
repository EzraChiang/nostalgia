class CreateUsers < ActiveRecord::Migration
  create_table :users do |t|
    t.string :name, presence: true
    t.string :email, presence: true
    t.string :password_hash, presence: true
    t.timestamps
  end
end
