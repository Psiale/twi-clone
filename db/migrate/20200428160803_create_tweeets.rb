class CreateTweeets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweeets do |t|
      t.text :tweet

      t.timestamps
    end
  end
end
