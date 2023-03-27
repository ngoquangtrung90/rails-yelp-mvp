def phone_number_format(phone_number)
  phone = ''
  phone_number.chars.each { |c| phone << c if c != ' ' }
  return phone.match(/\A(0|\+33)[1-9]\d{8}\z/) ? true : false
end

puts phone_number_format('01 43 54 23 31')
