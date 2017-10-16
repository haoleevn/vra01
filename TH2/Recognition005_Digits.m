function Recognition005_Digits()
    fprintf('\n Load training data ');
    imgTrainAll = loadMNISTImages('train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('train-labels.idx1-ubyte');  
    fprintf('\n Load testing data ');
    imgTestAll = loadMNISTImages('t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('t10k-labels.idx1-ubyte');
    fprintf('\n Done loading \n');
    
    %nTrainImages = size(imgTrainAll',1);
    %nTrainLabels = size(lblTrainAll,1);
    %fprintf('\n Total of training images: %d', nTrainImages);
    %fprintf('\n Total of training labels: %d', nTrainLabels);
    
    Mdl = fitcknn(imgTrainAll' , lblTrainAll,'NumNeighbors',2,'Standardize',1); %{==> Model}%
    nTestImages = size(imgTestAll,2); 
    nNumber = randi([1 nTestImages]);
    imgTest = imgTestAll(:,nNumber);
    
    lblPredictTest = predict(Mdl,imgTest');
    lblImageTest = lblTestAll(nNumber);
    
    figure;
    img2D = reshape(imgTest, 28,28);
    imshow(img2D);
    
    fprintf('\n Results ::::');
    
    strLabelImage ='\n Randomly selected : ';
    strLabelImage = [strLabelImage, num2str(lblTestAll(nNumber)),'  '];
    strLabelImage = [strLabelImage, '\n Predicted on MatLab : '];
    strLabelImage = [strLabelImage, num2str(lblPredictTest),'. '];
    
    if(lblPredictTest == lblImageTest)
        strLabelImage = [strLabelImage, '==> Prediction is precise ! \n'];
    else
        strLabelImage = [strLabelImage, '==> Prediction is not precise !!! \n'];
    end 
    fprintf(strLabelImage);
end