class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.text :occupations
      t.text :skills
      t.text :education
      t.date :date_of_birth
      t.string :hometown
      t.text :about

      t.timestamps
    end
  end
end
