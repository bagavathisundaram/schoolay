class CreateAnonymousUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :anonymous_users do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.float :commision
      t.references :school, foreign_key: true
      t.timestamps
    end
  end
end
