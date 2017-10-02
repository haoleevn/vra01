function Example004()
    strMsg = '\n Please input n:';
    n = input(strMsg);
    
    s =0;
    for i=1:n
        s = s + i;
    end
    
    fprintf('\n Total S = 1 + 2 + ... + %d = %d \n',n,s);
end