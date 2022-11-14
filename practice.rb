fruits = ["apple", "melon", "orange"]
numbers = [1, 2, 3]
fruit = catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit},#{n}"
      if fruit == "orange" && n == 3
        throw :done, fruit
      end
    end
  end
end
puts fruit
