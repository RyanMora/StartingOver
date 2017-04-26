def add(num1,num2)
  num1 + num2
end
def subtract(num1, num2)
  num1 - num2
end
def sum(arr)
  return 0 if arr.empty?
  arr.reduce(:+)
end
def multiply(arr)
  arr.reduce(:*)
end
def power(num1, num2)
  num1 ** num2
end
def factorial(num)
  return 1 if num == 0
  arr = []
  i = 1
  num.times do
    arr << i
    i += 1
  end
  arr.reduce(:*)
end
