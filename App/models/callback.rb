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

  
  
