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
        smaller_table << (i*j).to_s
      else
      smaller_table << (i*j).to_s
      end
      j += 1
    end
    larger_table << smaller_table
    i += 1
  end
  larger_table
end

p multiplication_table(5)
