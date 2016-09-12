class CreateDecades < ActiveRecord::Migration
  def change
    create_table :decades do |t|
      t.string :name, null: false

    end
  end
end
