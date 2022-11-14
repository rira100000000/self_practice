class Enumerator
  def fake_each(&block)
    return self if block.nil?
    for x in self
      yield(x)
    end
    self
  end

  def fake_map(&block)
    return self if block.nil?
    result=[]
    for x in self
      result.push(yield(x))
    end
    result
  end
  
  def fake_with_index(&block)
    return self if block.nil?
    i = 0
    for x in self
      yield(x,i)
      i += 1
    end
  end
end

enum = Enumerator.new do|array|
  for n in (1..3) 
    array << n
  end
end
p enum.class
p enum.map.fake_with_index{|x,i| puts "#{x},#{i}"}
