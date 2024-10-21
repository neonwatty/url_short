class Url < ApplicationRecord
  BASE_URL = "http://localhost:3000"
  validates :source, presence: true
  validates :source, format: { with: URI.regexp }, if: -> { source.present? }
  validates :target, format: { with: URI.regexp }, if: -> { target.present? }

  before_save :create_target

  private
    def create_target
        len=8
        ext = SecureRandom.alphanumeric(len)
        target_string = "#{BASE_URL}/targets/#{ext}"
        self.target_id = ext
        self.target = target_string
    end 
end
