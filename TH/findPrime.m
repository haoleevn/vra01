function primeArray = findPrime(n)
    count =0;
    i=2;
    primeArray = [];
    while (count<n)
        if(isPrime(i)==1)
            count = count +1;
            primeArray =[primeArray, i];
        end
        i=i+1;
    end
end