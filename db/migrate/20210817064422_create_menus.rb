class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|

      t.string      :name,               null: false
      t.integer     :price,              null: false
      t.text        :profile,            null: false
      t.references  :user,               foreign_key:true 

      t.timestamps
    end
  end
end
