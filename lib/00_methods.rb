def size (liste)
  return liste.size
end

def shorter (liste)
  length = liste[0].length
  handle_short = ""
  liste.each { |a|
    if (a.length < length)
      length = a.length
      handle_short = a
    end
  }

  return handle_short
end

def five (liste)
  fiveChar = 0
  liste.each { |a|
    if (a.length == 6)
      fiveChar = fiveChar + 1
    end
  }

  return fiveChar
end

def majuscule (liste)
  return liste.count { |a|
    a[1] =~ /[A-Z]/
  }
end

def alpha_sort (liste)
  return liste.sort_by { |a| 
    a[1].downcase
  }
end

def length_sort (liste)
  return liste.sort_by(&:length)
end

def pos (liste, handle)
  return liste.index(handle) + 1
end

def filter_by_size (liste)
  repartition = Hash.new(0)

  max_length = (liste.max {|a, b| a.length <=> b.length}).length

  1.upto(max_length) do |length|
    repartition[length] = liste.count { |handle| handle.length == length }
  end

  return repartition
end