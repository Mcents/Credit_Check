require 'pry'
class CreditCheck
  def valid(card_number)
    array = number_double(card_number)
    final_array = split_and_add(array)

    if final_array.inject(:+) % 10 == 0
      puts "This number is valid!"
    else
      puts "This number is invalid"
    end
  end

  def number_double(card_number)
      array = []
      card_number.chars.reverse.each_with_index do |x, index|
      number = x.to_i
      if index.odd?
        array << (number * 2)
      else
         array << number
      end
      array
    end
  end


  def split_and_add(card_number)
    new_array = card_number.map do |number|
      if number >= 10
        first = number.to_s[0]
        second = number.to_s[1]
        number = first.to_i + second.to_i
      else
        number
      end
    end
end
end
card_number = "342801633855673"
@run = CreditCheck.new
@run.valid(card_number)
