class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validate :phone_number_format

  def phone_number_format
    # puts 'valid'
    if phone_number.blank?
      errors.add(:phone_number, 'must be a valid French phone number')
      return false
    end

    phone = ''
    phone_number.chars.each { |c| phone << c if c != ' ' }
    check = phone.match(/\A(0|\+33)[1-9]\d{8}\z/) ? true : false
    if !phone_number.present? || !check
      errors.add(:phone_number, 'must be a valid French phone number')
      return false
    end
    true
  end

  validates :category, inclusion: { in: %w[chinese italian japanese french belgian],
                                    message: '%<value>s is not a valid category' }
end
