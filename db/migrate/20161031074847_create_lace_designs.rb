class CreateLaceDesigns < ActiveRecord::Migration
  def change
    create_table :lace_designs do |t|
      t.string :lace_design_no
      t.string :use
      t.string :lace_type
      t.string :rs
      t.integer :carry
      t.float :point
      t.string :nominal_width
      t.float :fin_mr
      t.string :mc_type
      t.integer :honsu
      t.boolean :sherring
      t.boolean :halfcut
      t.string :skecher
      t.string :design_code
      t.string :design_no
      t.string :drafman
      t.text :remarks

      t.timestamps null: false
    end
  end
end
