array = ["a","a","c","b","b","b","d"]

def n_most_frequent_string(array, n)
  result = []

  array.uniq.each do |str|
  	result = array.inject(Hash.new(0)) { |hash, str| hash[str] += 1; hash }.sort_by { |k,v| -v }
  end
  
  result[0...n]
end

p n_most_frequent_string(array, 2)
