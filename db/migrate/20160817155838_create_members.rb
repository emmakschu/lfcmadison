class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :city
      t.boolean :isLFCmember
      t.integer :memNumber


    end
  end
end
