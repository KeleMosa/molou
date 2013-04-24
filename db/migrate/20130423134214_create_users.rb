class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :password
      t.string :email
      t.string :address
      t.integer :phone

      t.timestamps
    end
  end
end
