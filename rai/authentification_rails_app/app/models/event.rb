class Event < ActiveRecord::Base
	has_many :registrations, dependent: :destroy

	validates :name, presence: { message: "darf nicht leer sein" }
	validates :desciption, length: { minimum: 25 }
	validates :capacity, numericality: { greater_than: 0 }
	validates :image_file, format: { with: %r{\.(gif\z|jpg\z|png\z)}, message: "darf nur im gif-, jpg- oder png-Format sein." } # validates :image_file, format: { with: /\w+\.(gif|jpg|png)\z/i, message: "darf nur im gif-, jpg- oder png-Format sein. } < Regular Expression

	def free?
		self.price.blank? || self.price.zero?
	end
	def self.upcoming
		where("start_at >= ?", Time.now).order("start_at")
	end
end
