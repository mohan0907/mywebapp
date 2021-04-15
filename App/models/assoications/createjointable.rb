class Assembly <ApplicationRecord
  has_and_belongs_to_many :parts 
end
class Part <ApplicationRecord
  has_and_belongs_to_many :assemblies
end

#migration to use join method create-join-table
class CreateAssembliesPartsJoinTable 
  def change
    create_join_table :assemblies , :parts do |t|
      t.index :assmebly_id
      t.index :parts_id
    end
  end
end
    
      
