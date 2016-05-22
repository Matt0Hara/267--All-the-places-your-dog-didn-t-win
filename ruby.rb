class Contest
  def postfix(num)
    ops = ["st", "nd", "rd", "th"]
    last_digit = num.to_s[-1].to_i
    last_two = "#{num.to_s[-2]}#{num.to_s[-1]}".to_i
    if last_two == 11 || last_two == 12 || last_two == 13
      ops.last
    else
      last_digit <= 3 && last_digit > 0 ? ops[last_digit - 1] : ops.last
    end
  end

  def not_place(my_place, num_of_places)
    last = num_of_places
    places = (1..last).to_a
    places.delete(my_place)
    print places.map { |place| place = "#{place.to_s}#{postfix(place)}" }.join(", ")
  end
end

Contest.new.not_place(5, 115)
