# Luhn's Algo
def luhn number
	# Step 1 - split the credit card into its individual digits.
	digits = number.to_s.split("")
	# Step 2 - Start from the right, double every second digit (i.e., digit 2, 4, 6 etc.).
	digits.reverse.each_with_index do |digit_str, index|
		digit = digit_str.to_i
		if index % 2 == 1 # if index is odd
			digit = digit * 2
		end
	# Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
		if digit >= 10
			digit = digit - 9 
		end
	end
	# Step 4 - Sum the digits.
	number = "41944560385008504"
	sum = 0

	# Step 5 - If the sum is divisible by 10, it's a valid number. Otherwise it's invalid.
	if sum % 10 == 0
		puts number.to_s + "is a valid credit card number"
		return true 
	else 
		puts number.to_s + "is an example of fraud"
		return false
	end
end
luhn 41944560385008504