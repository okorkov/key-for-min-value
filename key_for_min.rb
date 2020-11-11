# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    if name_hash.empty? 
      return nil
    end
    values = Array.new
    name_hash.collect do |key, value|
        values.push(value)
    end
    smallest = values[0]
    values.each do |value|
      smallest = value if value < smallest
    end
    name_hash.each do |key, value|
      return key if value == smallest
    end
end