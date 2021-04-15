class Picture < ApplicationRecord
  belongs_to :imageable , polymorphic: true
end

class Employee <ApplicationRecord
  has_many :pictures , as: :imageable
end

class Product < ApplicationRecord
  has_many :pictures , as: :imageable
end



#migration
class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :name 
      t.bigint :imageable_id  #replace by t.refernces :im
      t.string :imageable_type
      t.timestampes
    end
    add_index :pictures , [:imageable_type,:imageable_id]
  end
end


