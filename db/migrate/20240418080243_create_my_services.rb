class CreateMyServices < ActiveRecord::Migration[7.1]
  def change
    create_table :my_services do |t|
      t.string :title
      t.string :short_description
      t.string :description

      t.timestamps
    end
  end
end
