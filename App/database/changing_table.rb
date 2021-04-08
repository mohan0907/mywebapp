change_table :products do |t|
  t.remove :description ,:name
  t.string :part_number
  t.index :part_number
  t.rename :upcode , :upc_code
end  
  
  
  
  
  
  
  
  
  
  
  
