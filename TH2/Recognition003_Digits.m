function Recognition003_Digits()
    fprintf('\n Load training data ');
    imgTrainAll = loadMNISTImages('train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('train-labels.idx1-ubyte');  
    fprintf('\n Done loading \n');
    
    nTrainImages = size(imgTrainAll,2);
    
    figure;
    imgFirst = imgTrainAll(:,1);
    img2D = reshape(imgFirst, 28,28); 
    strLabelImg = num2str(lblTrainAll(1));
    imshow(img2D);
    title(strLabelImg);
    
    figure;
    imgLast = imgTrainAll(:,nTrainImages);
    imgLast2D = reshape(img, 28,28); 
    strLabelImg = num2str(lblTrainAll(nTrainImages));
    imshow(imgLast2D);
    title(strLabelImg);
end