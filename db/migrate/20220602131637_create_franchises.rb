class CreateFranchises < ActiveRecord::Migration[6.1]
  def change
    create_table :franchises do |t|
      t.string :title
    end
  end
end
