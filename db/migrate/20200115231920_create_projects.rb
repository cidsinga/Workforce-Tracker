class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :proj_name


      t.timestamp()
    end
  end
end
