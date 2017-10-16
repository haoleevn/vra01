function BaiTap015()
    %% Load Data Train
    [imgDataTrain, lblDataTrain] = loadData('train-images.idx3-ubyte','train-labels.idx1-ubyte');
    
    %% Extract Features
    featuresDataTrain = ExtractFeaturesHog(imgDataTrain);
    
    %% Build model KNN
    Mdl = fitcknn(featuresDataTrain',lblDataTrain);
    
    %% Load data test
    [imgDataTest, lblActualDataTest] = loadData('t10k-images.idx3-ubyte','t10k-labels.idx1-ubyte');
    
    %% Extract Features
    featuresDataTest = ExtractFeaturesHog(imgDataTest);
    
    %% Save Results
    lblResult = predict(Mdl, featuresDataTest');
    nResult = (lblResult == lblActualDataTest);
    nCount = sum(nResult);
    fprintf('\n So luong mau dung: %d \n', nCount);
end