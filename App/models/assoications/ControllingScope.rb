#this can be importent when you declare active record models within a modules
module MyApplication
  module Businness
    class Supplier
      has_one :accounts
    end
    class Account
      belongs_to :suppliers
    end
  end
end
