# create model
class Physician < ApplicationRecord
  has_many :appointements
  has_many :patients , through : : appointement
end

class Appointement <ApplicationRecoed
  belongs_to :physician
  belongs_to :patient
end

class Patient < ApplicationsRecord
  has_many :appointements
  has_many :physicians , through : :appointement
end

#create migration
class CreateAppointement < ActiveRecord
  def change
    Create_table :physicians do |t|
      t.string :name
      t.timestamp
    end
    
    
    Create_table :patients do |t|
      t.string :name
      t.timestamp
    
    Create_table :appointements do |t|
      belongs_to :physician
      belongs_to :patient
      t.datetime :appointemet_date
    end 
  end
end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
