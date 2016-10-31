class LaceDesign < ActiveRecord::Base
    has_many :item_designs
    accepts_nested_attributes_for :item_designs
end
