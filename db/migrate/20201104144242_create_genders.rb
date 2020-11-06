class CreateGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :genders do |t|
      t.integer :code
      t.string :gender
      t.timestamps
    end
  end
end
