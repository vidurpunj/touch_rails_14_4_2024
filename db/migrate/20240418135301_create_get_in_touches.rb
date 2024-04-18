class CreateGetInTouches < ActiveRecord::Migration[7.1]
  def change
    create_table :get_in_touches do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :comments

      t.timestamps
    end
  end
end
