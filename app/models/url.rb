class Url < ApplicationRecord
  validates :source, presence: true
  validates :source, format: { with: URI.regexp }, if: -> { source.present? }
  validates :target, format: { with: URI.regexp }, if: -> { target.present? }

  before_save :create_target

  private
    def create_target
        base_url="http://localhost:3000"
        len=8
        ext = SecureRandom.alphanumeric(len)
        target_string = "#{base_url}/#{ext}"
        p "hello"
        self.target = target_string
    end 
end
