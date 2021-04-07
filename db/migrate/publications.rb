class CreatePublication <ActiveRecord :: Migration[6.0]
       def change
              create_table :publication do |t|
                    t.string :title 
                    t.boolean single_issue
              end
              add_index :publication, publication_type_id
         end
         
end         
