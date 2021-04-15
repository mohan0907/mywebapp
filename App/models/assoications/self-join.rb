class Employee <ApplicationRecord
  has_many :subordinates , class_name :"Employee" ,foreign_key :"manager"
  belongs_to :manager ,class_name :employee, optional: true
end

@employee.subordinates 
@employee.manager

#migration
class CreateEmployees <ActiveRecord::migration[6.0]
  def change
    create_table :employees do |t|
      t.reference :manager,foreign_key :{to_table: :employees}
    end
  end
end


