class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|

      t.timestamps
      t.string :name
      t.date :birth_day
      t.string :gender
      t.date :visit_day
      t.string :menu
      t.text :talk
      t.text :image
      t.timestamps
    end
  end
end
