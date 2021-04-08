add_foreign_key :articals ,:authors   #articals hai table or authors is auther_id (act is a foreign keys )
remove_foreign_key :accounts , :branches
remove_foreign_key :accounts , name: :special_fk_name
