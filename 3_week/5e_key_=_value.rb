# Given a string s = 'key=value', create two strings s1 and s2 such that s1 contains key and s2 contains value.

s = 'key=value'
s1, s2 = s.split('=')
puts [*s1,s2]