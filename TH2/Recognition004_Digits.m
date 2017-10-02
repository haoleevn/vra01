function Recognition004_Digits()
    fprintf('\n Load training data ');
    imgTrainAll = loadMNISTImages('train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('train-labels.idx1-ubyte');  
    fprintf('\n Load testing data ');
    imgTestAll = loadMNISTImages('t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('t10k-labels.idx1-ubyte');
    fprintf('\n Done loading \n');
    
    nTrainImages = size(imgTrainAll,2);
    nNumber = randi([1 nTrainImages]); %{l?y 1 hình b?t k?}%
    
    nTestImages = size(imgTestAll,2);    
    nNumberTest = randi([1 nTestImages]); %{l?y 1 hình b?t k?}%
    
    figure;
    img = imgTrainAll(:,nNumber);
    img2D = reshape(img, 28,28); 
    strLabelImg = num2str(lblTrainAll(nNumber));
    imshow(img2D);
    title(strLabelImg);
    
    figure;
    imgTest = imgTestAll(:,nNumberTest);
    img2D = reshape(imgTest, 28,28); 
    strLabelImg = num2str(lblTestAll(nNumberTest));
    imshow(img2D);
    title(strLabelImg);
end