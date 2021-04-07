class CreatePublication <ActiveRecord :: Migration[6.0]
       def change
              create_table :publication do |t|
                    t.string :title 
                    t.boolean single_issue
                    t.text :description
                    t.references :publication_type
                    t.integer :publisher_id
                    t.string :publisher_type
              end
              add_index :publication, publication_type_id
         end
         
end         
