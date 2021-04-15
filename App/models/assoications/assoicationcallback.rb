#before add after add before remove after remove
class Author
  has_many :books , before_add::check_credit_limit
  def check_credit_limit(book)
    #.............
  end
  
  def calculate_shipping_charges(book)
    #......................
  end
end
# example we can :before_save callback to cause something to happen just before an object is saved.
