# Prompt the user to enter a number
read -p "Enter a number: " number
# Initialize the sum variable
sum=0
# Calculate the sum of digits using a loop
while (( number > 0 )); do
    sum=$(( sum + number % 10 ))  # Add last digit to sum
    number=$(( number / 10 ))      # Remove last digit
done
echo "Sum of digits (using loops) is: $sum"
