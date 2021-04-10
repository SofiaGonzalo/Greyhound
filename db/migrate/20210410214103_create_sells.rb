class CreateSells < ActiveRecord::Migration[6.1]
  def change
    create_table :sells do |t|
      t.references :product_id
      t.references :User_id
      t.timestamps
    end
  end
end
