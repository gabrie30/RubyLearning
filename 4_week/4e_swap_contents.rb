Exercise4. Write a Ruby program (call it p028swapcontents.rb) to do the following. Take two text files say A and B. The program should swap the contents of A and B. That is after the program is executed, A should contain B's contents and B should contains A's contents.

file_a = File.open("a.txt", "r+")
file_b = File.open("b.txt", "r+")
 
 
contents_a = file_a.read
contents_b = file_b.read
 
file_a = File.open("a.txt", "w")
file_a.write(contents_b)
file_a.close
 
file_b = File.open("b.txt", "w")
file_b.write(contents_a)
file_b.close
