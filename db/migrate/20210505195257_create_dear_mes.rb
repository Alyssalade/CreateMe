class CreateDearMes < ActiveRecord::Migration[6.1]
  def change
    create_table :dear_mes do |t|
      t.text :name

      t.timestamps
    end
  end
end
