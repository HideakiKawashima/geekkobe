class CreateKobes < ActiveRecord::Migration[6.1]
  def change
    create_table :kobes do |t|
      t.string :name
      t.string :profile
      t.string :mentor
      t.string :grade

      t.timestamps
    end
  end
end
