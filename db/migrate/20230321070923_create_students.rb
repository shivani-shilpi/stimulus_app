class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :state
      t.string :country
      t.string :contact

      t.timestamps
    end
  end
end
