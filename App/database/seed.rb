class AddIniatProducts <ActiveRecord :: Migration
  def up
    5.times do |i|
      product.create(name :"product ##{i}" ,description: "A prouct ,")
    end
  end
  
  def down
    products .delete_all
  end
end
# this is especially uesful when reloading the database frequently in development and test environments.
        
