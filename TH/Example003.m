function Example003()
    strMsg = '\n Please input n:';
    n = input(strMsg);
    s = 0;
    i = 1;
    while i <= n
        s = s+i;
        i=i+1;
    end
    fprintf('\n Total S = 1 + 2 + ... + %d = %d \n', n,s); 
end