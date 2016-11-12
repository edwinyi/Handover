clear all, close all

data.fileName = 'ToyCannon5dim';
data.epsilon = 0.7;
data.initSamples = 30;
data.updateSamples = 5;
data.gradRestarts = 10;
data.numHyper = 7;
data.samples = [0.9435    0.0280   -0.0292    1.0426    0.0022
    0.7053   -0.1981    0.0559    0.8513   -0.0419
    1.0118   -0.0546    0.2622    0.8374    0.0163
    0.9285   -0.0199   -0.0009    0.9952   -0.0015
    1.3394   -0.2489    0.0454    1.1444   -0.3468
    1.0171    0.3017   -0.0770    0.8255    0.1295
    0.7852    0.2879   -0.1540    0.9051    0.3154
    1.1575    0.2215   -0.0686    0.6429   -0.1834
    1.0154    0.1689   -0.0365    1.0321    0.0846
    1.1506    0.2537    0.1593    0.8121    0.0718
    1.0963    0.4286    0.0927    1.0307    0.2098
    0.5361    0.0583    0.0470    1.0888    0.1006
    0.8386    0.2355   -0.2507    0.7250    0.1004
    0.6559    0.1747   -0.0620    0.9702    0.0190
    0.6914   -0.0350   -0.0017    0.9691   -0.1181
    0.7947    0.3059    0.1265    0.8225   -0.0859
    1.2322    0.4062   -0.0124    0.7532    0.2920
    0.7803    0.0338   -0.4603    0.9201   -0.0720
    1.1787    0.1763    0.1479    1.1462   -0.2888
    0.7547   -0.2606   -0.2203    0.8772   -0.0038
    1.1874    0.0294    0.2446    1.1269    0.0565
    0.9336    0.1690   -0.0274    1.1385   -0.1985
    0.6894   -0.0661    0.0905    0.8895   -0.0726
    0.8337   -0.1493   -0.0932    1.0385    0.0359
    1.0579    0.0409    0.3466    0.8383    0.0955
    1.3022   -0.0998    0.0445    1.1201    0.2807
    0.7644    0.1917    0.0390    1.0298    0.0490
    1.0653    0.2110   -0.3768    0.9976    0.3310
    1.2279    0.0703   -0.2739    0.8230    0.0595];
data.policyMean = [1, .1, .01, 1, .02];
data.policyCov = {diag(ones(1, 5)*.2).^2};
data.policyStd = ones(1, 5)*.2;
data.prefFeedback = [   2     1
     3     2
     3     4
     5     4
     5     6
     6     7
     8     7
     8     9
    10     9
    10    11
    11    12
    13    12
    13    14
    15    14
    16    15
    16    17
    17    18
    18    19
    20    21
    21    22
    23    22
    23    24
    25    24
    25    26
    27    26
    27    28
    29    28];
data.absFeedback = [ 1     3
    10    10
    11     4
    13     8
    16     7
    29     9];
data.failedExperiments = [];
data.hyp = [];

if exist(['./', data.fileName, '.mat'], 'file')
    error([data.fileName, '.mat already exists!'])
else
    save(['./',data.fileName, '.mat'], 'data');
end
    
