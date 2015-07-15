class CreateKoans < ActiveRecord::Migration
  def change
    create_table :koans do |t|
      t.string :title
      t.text :question
      t.text :solution

      t.timestamps
    end
  end
end
