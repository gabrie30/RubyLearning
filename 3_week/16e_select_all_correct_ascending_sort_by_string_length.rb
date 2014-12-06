a = ["z", "Magazine", "Sunday", "Jump"]
 
p a.sort # sorts ascending alphabetically
p a.sort { |s| s } # `>': comparison of String with 0 failed (ArgumentError)
p a.sort { |l, r| l <=> r } # sorts ascending alphabetically
p a.sort { |l, r| l.length <=> r.length } # sorts by string length
p a.sort_by { |s| s } # sorts ascending alphabetically
p a.sort_by { |s| s.length } # sorts by string length