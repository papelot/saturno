class Prescription < ApplicationRecord
  before_save :upcase_data
  
  validates :bc1, presence: true, length: { is: 5 }
  validates :bc2,  presence: true, length: { is: 10 }
  validates :cf, presence: true, length: { is: 16 }
  
  
  private
    def upcase_data
      self.cf=cf.upcase     
      self.bc1=bc1.upcase
    end 
      
end
