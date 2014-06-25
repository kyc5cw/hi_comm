class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :type
      t.text :about
      t.text :details
      t.string :scope

      t.timestamps
    end
  end
end
