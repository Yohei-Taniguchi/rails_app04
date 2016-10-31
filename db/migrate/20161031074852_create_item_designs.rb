class CreateItemDesigns < ActiveRecord::Migration
  def change
    create_table :item_designs do |t|
      t.string :item_cd
      t.string :yarn
      t.float :strech_rate
      t.float :ori_mr
      t.integer :plan_width
      t.integer :plan_repeart
      t.integer :special_width
      t.integer :special_repeart
      t.integer :repeart_count
      t.string :process_type
      t.text :remarks
      t.integer :lace_design_id

      t.timestamps null: false
    end
  end
end
