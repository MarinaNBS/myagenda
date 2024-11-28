class CreateFamilyMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :family_members do |t|
      t.references  :user, foreign_key: true

      t.timestamps
    end
  end
end
