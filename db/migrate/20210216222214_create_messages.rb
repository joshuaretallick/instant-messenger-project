class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :user_name
      t.text :body
      t.integer :channel_id

      t.timestamps
    end
  end
end
