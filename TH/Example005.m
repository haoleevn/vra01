function m = isPrime(n)
    count = 0;
    for i =1:n
        if (mod(n,i)==0)
            count = count +1;
        end
    end
    m = (count ==2);
end

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

function savePrime(n)
    rArray = findPrime(n);
    strFileName = ['prime',num2str(n),'.mat'];
    save(strFileName, 'rArray');
end

function loadPrime(n)
     strFileName = ['prime',num2str(n),'.mat'];
     load(strFileName);
     rArray
end

