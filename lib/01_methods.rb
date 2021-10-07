def build_hash (devises, prix)
  devises_hash = Hash[*devises.zip(prix).flatten]

  return devises_hash
end

def max (hash)
  return hash.select {|a,b| b == hash.values.max}
end

def min (hash)
  return hash.select {|a,b| b == hash.values.min}
end

def lowest (hash, value)
  return hash.select {|a,b| b.to_i < value.to_i}
end

def high_lowest (hash, value)
  lower_values = lowest(hash, value)
  return max(lower_values)
end