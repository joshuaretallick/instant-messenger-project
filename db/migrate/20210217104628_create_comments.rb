# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :channel_id
      t.text :body

      t.timestamps
    end
  end
end
