class Person < ApplicationRecord
   vaildates :name ,presence :true
end



# irb> p.valid?
#false
#irb> save
#false
#irb> save!
#AtiveRecord:: RecordINvalid :validates failed:


#validation helper
#acceptance 
class person < ApplicationRecord
  validates :terms_of_service , acceptance :true
end

class person <ApplicationRecord
  validates :terms_of_service , acceptance :{accept :'yes'}
end


#validates_associated
class library <ApplicationRecord
  has_many :books
  validates_associated :books
end


#confiration
class person <ApplicationRecord
  validates :email ,confirmation :true
end
