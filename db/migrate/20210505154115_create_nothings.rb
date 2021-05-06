class CreateNothings < ActiveRecord::Migration[6.1]
  def change
    create_table :nothings do |t|
      t.string :name

      t.timestamps
    end
  end
end
