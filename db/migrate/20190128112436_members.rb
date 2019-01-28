class Members < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :firstanme
      t.string :familyname
      t.string :email

      t.timestamps
    end
  end
end
