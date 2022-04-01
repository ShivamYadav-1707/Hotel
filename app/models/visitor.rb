class Visitor < ApplicationRecord
    validates :name, :presence => true, :length => { minimum:3, maximum:50 } 
    validates :room_no, :presence =>true, :uniqueness=> true
    validates :description, :presence => true
    validates :date_of_arrival, :presence => true
end
