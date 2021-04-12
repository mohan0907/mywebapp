class Employee < ApplicationRecord
  belongs_to :company , touch :true
  after_touch do
    puts 'An Employee was touched'
  end
end


class Company < ApplicationRecord
  has_many :enployees
  after_touch :log_when_employees_or_company_touched
  
  private 
         def log_when_employees_or_company_touched
           puts "Employee/Company was touched"
         end
end


@employee = Employee.last
@employee.touch # triggers @employee.company.touch


#Ralational callbacks -- callbacks work through model relationship and can even be defined by them User has_many articles
class User < ApplicationRecord 
   has_many :articles , dependent: :destroy 
end
class Article < ApplicationRecord
  after_destroy :log_destroy_action
  def log_destroy_action 
    puts 'Article destroyed'
  end
end  
user=User.first
user.articles.creates!
user.destroy
#o/p Artical destroyed











  
  
