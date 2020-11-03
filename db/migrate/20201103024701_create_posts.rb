class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|


        t.string :name,              null: false
        t.date :birth_day,              null: false
        t.string :gender,              null: false
        t.date :visit_day,              null: false
        t.string :menu,              null: false
        t.text :talk,              null: false
        t.string :address,              null: false
        t.string :phone_num,              null: false
        t.text :image,              null: false
        t.string :mail_address,              null: false
        t.timestamps
  
      t.timestamps
    end
  end
end
