# a. Imagine for a moment, that you want to be able to set a variable, 
# but if it’s not set, you default to a known value. You’d rather do it 
# on a single line.


# puts expand = defined?( expand ) ? expand : true

# Why is the output nil ?

defined?(expand) is evaluating as true, so the true branch gets assigned to expand.

2.1.2 :001 > expand = "vote"
 => "vote" 
2.1.2 :002 > puts expand = defined?(expand) ? expand : true
vote
 => nil 



2.1.2 :001 > puts expand = defined?(expanddd) ? expand :true
true
 => nil 



2.1.2 :001 > expand = "something"
 => "something" 
2.1.2 :002 > puts expand = defined?(nil) ? "default" : expand
default
 => nil 


expand = defined?(expand) ? # => "local-variable"
  expand : # => nil
  true # => nil


different_example = defined?(different_example) ?  # => "local-variable"
different_example : # => nil
  'went the false branch way' # => nil


