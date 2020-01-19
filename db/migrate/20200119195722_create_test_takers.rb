class CreateTestTakers < ActiveRecord::Migration[6.0]
  def change
    create_table :test_takers do |t|
      t.string :login
      t.string :password
      t.string :title
      t.string :lastname
      t.string :firstname
      t.string :gender
      t.string :email
      t.string :picture
      t.string :address

      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
