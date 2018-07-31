def wave(str)
  result = []
  (0...str.length).each{|c|
    unless str[c] == " "
      b = str.split("")
      a = str[c].capitalize
      b.delete_at(c)
        result.push(b.join("").insert(c,a))
    end
  }
  return result
end
