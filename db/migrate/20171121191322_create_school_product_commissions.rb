class CreateSchoolProductCommissions < ActiveRecord::Migration[5.1]
  def change
    create_table :school_product_commissions do |t|
      t.references :school, foreign_key: true
      t.integer :product_id
      t.float :commission

      t.timestamps
    end
  end
end
