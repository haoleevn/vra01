function Recognition002_Digits()
    fprintf('\n Load training data ');
    imgTrainAll = loadMNISTImages('train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('train-labels.idx1-ubyte');
    fprintf('\n Load testing data ');
    imgTestAll = loadMNISTImages('t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('t10k-labels.idx1-ubyte');
    fprintf('\n Done loading \n');
    
    nTrainImages = size(imgTrainAll,2);
    nTrainLabels = size(lblTrainAll,1);
    fprintf('\n Total of training images: %d', nTrainImages);
    fprintf('\n Total of training labels: %d', nTrainLabels);
    
    nTestImages = size(imgTestAll,2);
    nTestLabels = size(lblTestAll,1);
    fprintf('\n Total of testing images: %d', nTestImages);
    fprintf('\n Total of testing labels: %d', nTestLabels);
    
    nSizeOfImage = size(imgTrainAll,1);
    fprintf('\n Size of each image: %d', nSizeOfImage);
end