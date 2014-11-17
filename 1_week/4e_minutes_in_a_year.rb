# Write a Ruby program that tells you how many minutes there are in a year (do not bother right now about leap years etc.).

def mins_a_year
	days = 365
	hours = days * 24
	minutes = hours * 60
	p "There are #{minutes} minutes in a year"
end

mins_a_year

