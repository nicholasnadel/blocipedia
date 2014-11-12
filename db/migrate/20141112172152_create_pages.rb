class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :body
      t.string :title

      t.timestamps null: false
    end
  end
end
