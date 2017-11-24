class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :rollno
      t.string :parent_primary_email
      t.string :parent_primary_phone
      t.string :class
      t.boolean :ordered
      t.string :payment_token
      t.integer :commision
      t.references :school, foreign_key: true
      t.timestamps
    end
  end
end
