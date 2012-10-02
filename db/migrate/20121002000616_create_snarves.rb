class CreateSnarves < ActiveRecord::Migration
  def change
    create_table :snarves do |t|
      t.string :quote

      t.timestamps
    end
  end
end
