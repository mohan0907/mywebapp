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
   
 #Validation length
class Person < ApplicationRecord
   validates :name, length: { minimum: 2 }
   validates :bio, length: { maximum: 500 }
   validates :password, length: { in: 6..20 }
   validates :registration_number, length: { is: 6 }
end

   
   
   
   
   
   
   
   
   
   
end
