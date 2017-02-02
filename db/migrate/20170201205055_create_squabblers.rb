class CreateSquabblers < ActiveRecord::Migration[5.0]
  def change
    create_table :squabblers do |t|
      t.string :fname
      t.string :lname
      t.string :alias
      t.string :sole_squabbler
      t.string :team_squabbler
      t.string :judge
      t.string :twitter_handle
      t.string :facebook
      t.decimal :age
      t.string :country
      t.string :gender

      t.timestamps
    end
  end
end
