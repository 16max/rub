class Employee < ActiveRecord::Base
  belongs_to :project

  has_many :worked_hours

  validates :nachname , presence: true

  def name
  	( self.vorname + " " + self.nachname ).titleize
  end
end
