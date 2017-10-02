function savePrime(n)
    rArray = findPrime(n);
    strFileName = ['prime',num2str(n),'.mat'];
    save(strFileName, 'rArray');
end