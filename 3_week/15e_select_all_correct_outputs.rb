# Looks like it is similar to parallel assignment. i corresponds to the 0th element in the smaller arrays, and j corresponds to the 1st element in the smaller arrays.
 
# for i, j in [[1, 2], [3, 4], [5, 6]] # not sure why its giving nil
#   p [[i][j]]
# end
# [nil]
# [nil]
# [nil]
 
 
# for i, j in [[1, 2], [3, 4], [5, 6]]
#   p [i][j]
# end
# nil
# nil
# nil
 
# for i, j in [[1, 2], [3, 4], [5, 6]]
#   p i
# end
# 1
# 3
# 5
 
# for i, j in [[1, 2], [3, 4], [5, 6]]
#   p j
# end
# 2
# 4
# 6
 
# for i, j in [[1, 2], [3, 4], [5, 6]]
#   p [i], j
# end
# [1]
# 2
# [3]
# 4
# [5]
# 6
 
# for i, j in [[1, 2], [3, 4], [5, 6]]
#   p [[i]], j
# end
# [[1]]
# 2
# [[3]]
# 4
# [[5]]
# 6
 
# for i, j in [[1, 2], [3, 4], [5, 6]] # not sure why its giving 0's
#   p i[j]
# end
# 0
# 0
# 0
 
# for i, j, k in [[1, 2, 9], [3, 4, 8], [5, 6, 7]]
#   p i,j,k
# end
# 1
# 2
# 9
# 3
# 4
# 8
# 5
# 6
# 7