class Book < ApplicationRecord
  belongs_to :author 
end
# create Author class
class Author < ApplicationRecord
  
end  

#corresponding create migration might look like this 
class CreateBooks < ActiveRecord::migration[6]
  def change 
    create_table :authors do |t|
      t.string :name
      t.timestamps
    end
    create_table :books do |t|
      t.belongs_to :author
      t.datetime :published_at
      t.timestamps
    end  
  end
end
