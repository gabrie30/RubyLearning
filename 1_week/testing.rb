# doctest:Should create a multiplcation table of from 1 to 3 
# >> multiplication_table 5 
# => "1 2 3 \n 2 4 6 \n 3 6 9" 

def multiplication_table(n)
  i = 1
  larger_table = []
  while i <= n
    j=1
    smaller_table = []
    while j <= n
      if (i*j).to_s.length == 1
        format = (i*j).to_s
        format_1_space = " #{format}"
        smaller_table << format_1_space
      else
      smaller_table << i*j
      end 
      j += 1
    end
    larger_table << smaller_table
    i += 1
  end
  larger_table
end

multiplication_table(5) 
