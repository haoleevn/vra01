function BaiTap013() 
    %% Load Data Train 3. 
    strData = 'train-images.idx3-ubyte'; 
    strDataLabel = 'train-labels.idx1-ubyte'; 
    [imgDataTrain,lblDataTrain] = loadData( strData,strDataLabel); 
    %%  Extract Features  
    featuresDataTrain = ExtractFeaturesLBP( imgDataTrain); 
    %%  Build model KNN    
    Mdl = fitcknn(featuresDataTrain', lblDataTrain);
     %%  Load Data Test 
    strData = 't10k-images.idx3-ubyte';
    strDataLabel = 't10k-labels.idx1-ubyte'; 
    [imgDataTest,lblActualDataTest] = LoadData( strData,strDataLabel); 
    %%  Extract Features  
    featuresDataTest = ExtractFeaturesLBP(imgDataTest);

     %%  Save Result 
     lblResult = predict(Mdl,featuresDataTest'); 
     nResult = (lblResult == lblActualDataTest); 
     nCount = sum(nResult); 
     fprintf('\nSo luong mau dung: %d\n',nCount); 
end