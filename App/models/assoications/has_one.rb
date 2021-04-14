#has one indicates that one other model has a reference to this model .that model can be fectched through this associations.
# create model
class Supplier < ApplicationRecord
  has_one :account
end

class Account < ApplicationRecord
  
end

# create migration
class CreateSuppliers < ActiveRecord
  def change
    create_table :suppliers do |t|
      t.string :name
      t.timestamp
    end
    
    create_table :accounts do |t|
      t.belongs_to :supplier
      t.string :account_number
    end
  end
end
