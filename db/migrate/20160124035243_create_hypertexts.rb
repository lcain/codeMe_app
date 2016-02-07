class CreateHypertexts < ActiveRecord::Migration
  def change
    create_table :hypertexts do |t|
      t.integer :user_id
      t.text :content, default: ""

      t.timestamps null: false
    end
  end
end
