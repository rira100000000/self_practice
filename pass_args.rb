def foo(n, ...)
  bar(n * 100, ...)
end

def bar(*arr)
arr.each{|str| puts str}
end

foo(10, "test", 'TEST', 'tesT')
