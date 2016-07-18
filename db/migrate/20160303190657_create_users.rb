class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :username, { limit: 25, null: false }
      t.string   :email,    { null: false }
      t.string   :password, { limit: 25, null: false }

      t.timestamps null: false
    end
  end
end
