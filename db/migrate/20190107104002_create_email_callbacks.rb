class CreateEmailCallbacks < ActiveRecord::Migration
  def change
    create_table :email_callbacks do |t|
      t.json :data
      t.text :description

      t.timestamps null: false
    end
  end
end
