class Project < ActiveRecord::Base
 has_many :tasks, dependent: :destroy
 validates :title , :start_date , presence: { message: 'can not be blank' }
 validates :description , length: { minimum: 25 }
 end
