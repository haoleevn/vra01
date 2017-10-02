function Example001()
a = rand();
fprintf('\n ...:[%8.3f]',a);

r = randi([1 10]);
fprintf('\n ...[1 10]:[%d]',r);

rArr = randi([-10 10],[1 10]);
fprintf('\n ...:%d.',size(rArr,2));
fprintf('\n Array is created as :');
fprintf('[%2d]',rArr,2);
end