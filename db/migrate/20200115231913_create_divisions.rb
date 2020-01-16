class CreateDivisions < ActiveRecord::Migration[5.2]
  def change
    create_table :divisions do |t|
      t.string :div_name


      t.timestamp()
    end
  end
end
