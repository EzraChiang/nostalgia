class CreateTableUsersEntries < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, {limit: 40}
      t.string :email
      t.string :hashed_password

      t.timestamps
    end

    create_table :entries do |t|
      t.string :title
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
