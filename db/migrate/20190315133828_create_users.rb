class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :nickname
      t.string :image_url
      t.string :token
      t.string :stoken

      t.timestamps
    end
  end
end
