def c(n, r)
  (0...r).reduce(1) do |s, r|
    (s * (n - r)) / (r + 1)
  end
end

def pascal(row)
  coefficients = Array.new

  (0..row).each do |i|
    coefficients.push( c(row, i) )
  end

  return coefficients
end

print pascal(gets.chomp.to_i)