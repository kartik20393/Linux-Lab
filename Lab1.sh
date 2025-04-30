read -p "Enter the value of M: " M
read -p "Enter the value of N: " N
M=${M:-2} # Default to 2 if M is empty
echo "Prime numbers between $M and $N are:"
for (( num=M; num<=N; num++ )); do
    is_prime=1
    for (( i=2; i*i<=num; i++ )); do
        (( num % i == 0 )) && { is_prime=0; break; }
    done
    (( is_prime )) && echo $num
done
