# connection b/w to active record models common operations simple and easier
# author and books 
class Author < ApplicationRecord 
  has_many :books , dependent: :destroy 
end

# another class
class Books < ApplicationRecord
  belongs_to :author
end

# with this change , creating a new book for particular author 
@books= =@author.books.create(published_at: Time.now)

#deleting an author & all of its books is much easier
@author.destroy
