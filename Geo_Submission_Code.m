clear all
clc
%{
%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: C:\Users\jrjol\Documents\MATLAB\Year 3\Design3\Design 3_Soil Profile_Data.xlsx
%    Worksheet: MATLAB
%
%% Set up the Import Options and import the data
opts = spreadsheetImportOptions("NumVariables", 14);
% Specify sheet and range
opts.Sheet = "MATLAB";
opts.DataRange = "C3:P63";
% Specify column names and types
opts.VariableNames = ["No", "Depthm", "qcMPa", "fskPa", "u0kPa", "ukPa", "qckPa", "qtkPa", "Rf", "skNm3", "vokPa", "vokPa1", "Qt", "Fr"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];
% Import the data
%Design3SoilProfileDataS2 = readtable("/Users/wenghou/Library/Containers/com.microsoft.Excel/Data/Downloads/Design 3_Soil Profile_Data.xlsx", opts, "UseExcel", false)
%}
Design3SoilProfileDataS2=   [     0        0          0         0         0        0        0         0          0         0         0         0         0          0;
                                  1      0.5        4.5      12.2     0.001      0.5     4500      4500    0.27044    16.778    8.3891    7.8891    569.34    0.27095;
                                  2        1        3.8      12.4     0.001        1     3800      3800    0.32632    16.734    16.734    15.734    240.45    0.32776;
                                  3      1.5        3.5      12.3     0.001      0.2     3500      3500    0.35143    16.692    25.039    24.839     139.9    0.35396;
                                  4        2        2.4      12.1     0.001      0.3     2400      2400    0.50375    16.525    33.049    32.749    72.274    0.51078;
                                  5      2.5        4.8      12.8     0.001      0.1     4800      4800    0.26625    16.861    42.152    42.052    113.14    0.26861;
                                  6        3        5.7      13.9     0.001      0.3     5700      5700    0.24316    17.023    51.069    50.769    111.27    0.24536;
                                  7      3.5        6.3      13.6     0.001      1.2     6300      6300    0.21524    17.037    59.628    58.428     106.8    0.21729;
                                  8        4        6.1      14.3     0.001        1     6100      6100     0.2341    17.085    68.338    67.338    89.573    0.23675;
                                  9      4.5        6.8      13.3     0.001      0.5     6800      6800      0.195     17.04    76.681    76.181    88.255    0.19722;
                                 10        5        4.2      11.4     0.001        2     4200      4200    0.27238    16.679    83.393    81.393    50.577     0.2779;
                                 11      5.5        5.3      11.6     0.001        2     5300      5300    0.21792    16.781    92.295    90.295    57.675    0.22179;
                                 12        6        3.2      12.5     0.001        5     3200      3200    0.39062    16.676    100.06    95.058    32.611    0.40323;
                                 13      6.5        5.6      13.8     0.001      0.1     5600      5600    0.24643    17.011    110.57    110.47    49.691    0.25139;
                                 14        7        4.5      11.5     0.001        4     4500      4500    0.25556    16.712    116.98    112.98    38.794    0.26238;
                                 15      7.5        0.8      12.5     0.001      3.2      770       770     1.6234    16.119     120.9     117.7    5.5151     1.9257;
                                 16        8        0.7      39.6     0.001       11      700       700     5.6571    17.434    139.47    128.47    4.3629     7.0648;
                                 17      8.5        0.7     39.12     0.001      2.2      700       700     5.5886     17.42    148.07    145.87    3.7837     7.0879;
                                 18        9       0.83     35.78     0.001      0.1      830       830     4.3108    17.382    156.44    156.34    4.3084     5.3121;
                                 19      9.5       0.74     38.22     0.001      1.5      740       740     5.1649    17.414    165.44    163.94    3.5048      6.652;
                                 20       10       0.75     39.02     0.001      0.5      750       750     5.2027    17.444    174.44    173.94    3.3089     6.7795;
                                 21     10.5       0.75     38.96     4.905      5.2      750    751.12     5.1869    17.443    183.15    177.95    3.1918     6.8595;
                                 22       11       0.75     39.81      9.81     10.3      750    752.25     5.2921    17.469    192.16    181.86    3.0799     7.1077;
                                 23     11.5       0.83     39.84    14.715     13.1      830    833.38     4.7806     17.51    201.36    188.26    3.3571     6.3037;
                                 24       12       0.65        45     19.62     21.6      650     654.5     6.8755    17.558     210.7     189.1     2.347      10.14;
                                 25     12.5       0.82      52.1    24.525     30.1      820    825.62     6.3104    17.821    222.76    192.66    3.1292      8.642;
                                 26       13       0.89      35.8     29.43     29.8      890    896.75     3.9922    17.413    226.37    196.57    3.4104     5.3402;
                                 27     13.5       0.95      37.2    34.335     37.3      950    957.88     3.8836    17.484    236.03    198.73    3.6323     5.1535;
                                 28       14       0.89        41     39.24     44.6      890       899     4.5606    17.573    246.02    201.42    3.2419     6.2789;
                                 29     14.5        4.7       102    44.145     45.1     4700    4710.1     2.1655    19.289    279.69    234.59    18.886     2.3023;
                                 30       15        4.5       121     49.05     50.6     4500    4511.2     2.6822    19.472    292.09    241.49    17.472     2.8679;
                                 31     15.5        4.2     130.2    53.955     61.9     4200    4212.4     3.0909    19.532    302.74    243.84    16.034     3.3302;
                                 32       16        5.8     168.2     58.86     65.1     5800    5813.5     2.8933    19.958    319.32    254.22    21.612     3.0614;
                                 33     16.5        4.4     145.2    63.765     76.2     4400    4414.6     3.2891    19.678    324.68    248.48     16.46     3.5502;
                                 34       17        5.7     165.3     68.67       77     5700    5715.8      2.892    19.931    338.82    261.82    20.537     3.0742;
                                 35     17.5        3.8        95    73.575       78     3800    3816.9     2.4889    19.123    334.66    256.66    13.567     2.7281;
                                 36       18        4.7     126.9     78.48       88     4700      4718     2.6897    19.546    351.82    263.82     16.55     2.9064;
                                 37     18.5        5.9     182.9    83.385     88.4     5900    5919.1       3.09    20.063    371.17    282.77     19.62     3.2967;
                                 38       19        4.4     118.8     88.29       98     4400    4420.2     2.6876    19.443    369.42    271.42    14.925     2.9327;
                                 39     19.5        5.5     192.5    93.195    100.4     5500    5521.4     3.4865    20.096    391.87    291.47    17.599     3.7528;
                                 40       20        5.5     170.5      98.1      110     5500    5522.5     3.0874    19.954    399.07    289.07    17.724     3.3278;
                                 41     20.5          4       120       103      118     4000    4023.6     2.9824    19.418    398.07    280.07    12.945     3.3098;
                                 42       21        5.6     179.2    107.91    108.5     5600    5624.8     3.1859    20.019     420.4     311.9    16.686     3.4433;
                                 43     21.5        5.3     143.1    112.81      110     5300    5325.9     2.6869    19.734    424.28    314.28    15.596     2.9195;
                                 44       22        5.5     159.5    117.72      130     5500    5526.8      2.886    19.876    437.26    307.26    16.564     3.1339;
                                 45     22.5        5.3     153.7    122.62      129     5300    5327.7     2.8849    19.818     445.9     316.9    15.405     3.1484;
                                 46       23        5.5       187    127.53      137     5500      5529     3.3822    20.062    461.43    324.43     15.62     3.6901;
                                 47     23.5          6       150    132.44      134     6000    6030.4     2.4874    19.838    466.19    332.19     16.75     2.6958;
                                 48       24     44.444       316    137.34      153    44444     44476     0.7105    21.492    515.82    362.82    121.16    0.71884;
                                 49     24.5     51.778    333.19    142.25      164    51778     51810     0.6431    21.614    529.55    365.55    140.28    0.64974;
                                 50       25     51.111     248.4    147.15      188    51111     51145    0.48568    21.265    531.62    343.62    147.29    0.49078;
                                 51     25.5     46.667     338.1    152.06      197    46667     46701    0.72397    21.591    550.57    353.57    130.53    0.73261;
                                 52       26     50.222    264.42    156.96      198    50222     50258    0.52613    21.331    554.61    356.61    139.37      0.532;
                                 53     26.5     49.778    374.08    161.87      196    49778     49814    0.75095    21.735    575.97    379.97    129.59    0.75973;
                                 54       27     46.444    219.45    166.77      176    46444     46482    0.47212    21.082    569.22    393.22    116.76    0.47797;
                                 55     27.5     51.333    291.06    171.68      174    51333     51372    0.56657    21.452    589.94    415.94    122.09    0.57315;
                                 56       28     48.222    301.63    176.58      191    48222     48262    0.62498     21.47    601.16    410.16     116.2    0.63287;
                                 57     28.5         54    374.22    181.49      199    54000     54041    0.69247    21.767    620.36    421.36    126.78    0.70052;
                                 58       29     54.444     279.3    186.39      196    54444     54486    0.51261    21.427    621.38    425.38    126.63    0.51852;
                                 59     29.5     50.444    240.62    191.29      196    50444     50487    0.47659    21.222    626.06    430.06    115.94    0.48258;
                                 60       30     52.222       235     196.2      198    52222     52266    0.44962    21.208    636.25    438.25    117.81    0.45516;];
%% Clear temporary variables
clear opts
depth=Design3SoilProfileDataS2(1:61,2);  %extract and store depth data
depth(1,1)=0; %Pre set 
depth(62,1)=0;
leng=length(depth)-1;
qcMPA=Design3SoilProfileDataS2(1:61,3); %extracting qc in MPa data
qcMPA(62,1)=0; 
kc=zeros(leng,1); %Sizing an array so all the kc values at each depth can be checked individually
qcavalues=zeros(leng,1); %Used to store the qc average at each depth
qbvalues=zeros(leng,1); %Unit base resistance storage for all the depths
fpvalues=zeros(leng,1); %Unit shaft resistance storage for all the depths
Qult=zeros(leng,1); %Ultimate bearing capactiy Qb+Qs (MN)
Bg=3.55; %Group piles spacing 
Lg=3.55; %Group piles spacing
alphavalues=zeros(leng,1); %All the alpha values selected at all the depths
fpbarvalues=zeros(leng,1); %Avergae Unit shaft resistance after comparing with fpmax for all the depths

for c=2:leng %Iterative loop for each depth
    depthi=depth(c); %The current depth at this iteration
    qcMPAi=qcMPA(c); %The current qc value for this depth (iteration) (MPa)
    
    %Identification of the Kc value for this specific depth
    if c <= 15        %Applying kc value for Soil 1= Loose and Silty Sands
        if qcMPAi <=5  %qc value less then or equal to 5 MPa us kc=0.4
            kci=0.4;
        elseif qcMPAi >5 && qcMPAi <=12 %qc value greater then 5MPa but less than/equal to 12MPa chose Kc=0.4 again
            kci=0.4;
        else qcMPAi>12 %qc value greater then 12MPa use kc=0.3
            kci=0.3;
        end
        
    elseif c >=16 && c<= 47  % Applying kc values for Soil 2 and 3 = Silty Clays to Clay
        if qcMPAi<1 %qc less than 1 MPa chose kc=0.4
            kci=0.4;
        elseif qcMPAi >=1 && qcMPAi <=5 %qc in the range 1-5 inclusive choose 0.35
            kci=0.35;
        elseif qcMPAi >5 && qcMPAi <=12 %qc in the rangle 5-12 (including 12) choose kc=0.45
            kci=0.45;
        else qcMPAi>12 %qc greater than 12 then choose kc =0.45
            kci=0.45;
        end
        
    else c >= 48  %Applying kc values for loose/ silty sands
        if qcMPAi<1 % qc less then 1 MPa choose kc=0.4
            kci=0.4;
        elseif qcMPAi >=1 && qcMPAi <=5 %qc less than 5, then kc=0.4
            kci=0.4;
        elseif qcMPAi >5 && qcMPAi <=12 %qc in range 5-12 (including 12) then Kc 0.4
            kci=0.4;
        else qcMPAi>12 %qc greater then 12 MPa then choose kc=0.3
            kci=0.3;
        end
    end
   
    kc(c)=kci; %Storing the kc value chose at its' specific depth
    ai=1.5*0.4; %a=3/2*diameter 
    ai=round(ai/0.5)*0.5; %OUR DATA IS ACCURATE TO 0.5m, NOT 0.6m (0.1m) THEREFORE ROUND DOWN TO 0.5m TO AVOID ASSUMPTIONS
   
    DL=depthi-ai; %Calculating lower depth value based on a
    DU=depthi+ai; %Calculating upper depth value based on a
   
    %qc average is taken from 3 different qc values. One at the given
    %depth, one at depth-a, and one at depth+a
    qcprime=zeros(1,3); %Sizing the values which will be used to calculate qca
    qcprime(1)=qcMPA(c-1); %qc at the give depth-a
    qcprime(2)=qcMPA(c); %qc at the given depth
    qcprime(3)=qcMPA(c+1); %qc at the give depth+a
    qca=sum(qcprime,2) ./ sum(qcprime~=0,2); %Calculating the average
 
    %CHECKING IF THE qc VALUES USED FOR THE AVERAGE ARE IN THE RANGE
    %0.7*qca-1.3*qca
    for i=1:3 %Iterating through our 3 values of qc used for qca
        if qcprime(i)<0.7*qca %Below 0.7*qca then edit the value
            qcprime(i)=0.7*qca;
            
        end
        if qcprime(i)>1.3*qca %Greater then 1.3*qca then edit the value
            qcprime(i)=1.3*qca;
        end
    end
   
    %With the updated values based on the acceptable range then recalculate the qca average 
    qca=sum(qcprime,2) ./ sum(qcprime~=0,2);
   
    if isnan(qca)
        qca=0;
    end
    qcavalues(c)=qca;
   
    %As kc and qca is now known, the unit base resistance can be calculated
    qb=kci*qca;
   
    qbvalues(c)=qb; %Storing the qb values for each depth, this will be useful later when calculating pile group depth
    Ab=pi*0.2^2; %Area of the base of the pile
    Qb=qb*Ab; %Base resistance (MN)
   
    %Now focusing on the skin friction resistance
    % calculating fp
   
    %FINDING ALPHA FOR EACH SOIL TYPE UNDER DIFFERENT LOADS
    if c <= 15 %Loose sand and silty sand
        if qcMPAi<=5
            alphai=60;
            fpmax=0.035;
        elseif qcMPAi >5 && qcMPAi <=12
            alphai=100;
            fpmax=0.08; 
        else qcMPAi>12
            alphai=150;
            fpmax=0.12;
        end
    elseif c >=16 && c<= 47 %CLAYS
        if qcMPAi<1
            alphai=30;
            fpmax=0.015;
        elseif qcMPAi >=1 && qcMPAi <5
            alphai=40;
            fpmax=0.035;
        elseif qcMPAi >=5 && qcMPAi <=12
            alphai=60; 
            fpmax=0.035;
        else qcMPAi>12
            alphai=60;
            fpmax=0.035;
        end
    else %c >= 48 % Loose Sands
        if qcMPAi<=5
            alphai=60;
            fpmax=0.035;
        elseif qcMPAi >5 && qcMPAi <=12
            alphai=100;
            fpmax=0.08; 
        else %qcMPAi>12
            alphai=150;
            fpmax=0.12;
        end
    end
   
    alphavalues(c)=alphai; %Store all the alpha values at all the depths for manual check if need be. 
    
    fp=qcMPAi/alphai; %First attempt at calculating the unit shaft resistance (needs to be checked with fpmax)
   
    if fp>fpmax %The checker for unit shaft resistance
        fp=fpmax; %If fp is greater than fpmax, then fp takes the value of fpmax
    end
   
    fpvalues(c)=fp; %Store the unit shaft resistance at each depth.
    As=pi*0.4*depth(c); %Area of the shaft m^2
    %AVERAGE NEEDS TO BE TAKEN FROM ALL THE UNIT SHAFT RESISTANCES AT ALL THE DEPTHS ABOVE THE CURRENT DEPTH
    
    fpbar=sum(fpvalues(2:c,1))/(c-1); %Average, represented by fp bar
    fpbarvalues(c)=fpbar; %Storing this fp average 
    
    Qs=fpbar*As; %Total shaft resistance (MN)
   
    % calculating Qult at each depth
    QultSingle(c,1)=Qb+Qs;
end
%Considering factor of safety 2; calculating Q allowable
QallSingle=QultSingle/2; %Q allowable =Q ultimate/FoS


%BLOCK FAILURE GROUP PILES
%THE PILE GROUP DESIGN IS DISCUSSED IN THE WORD DOCUMENT
QugBlock=zeros(leng,1); %Sizing an array to store the group block ultimate bearing capacities

for c=2:leng %Iterating through each depth, at each depth the unit base resistance is already known and the average unit shaft resistance along the length the pile is also known for all lengths.
    depthi=depth(c); %Current depth in the iteration
    QugBlock(c)=qbvalues(c)*Bg*Lg+fpbarvalues(c)*(Bg*4*depthi); %Q ultimate for pile group, Block calculation method
end
%Q allowable is calculated after applying a FoS of 2. Qall= Q ultim/FoS
QallgBlock=QugBlock/2; %Q allowble - pile group - Block failure method 


%INDIVIDUAL PILE GORUP MEHTOD
QugIndividualGroup=zeros(leng,1); %Sizing the array to store group ultimate bearing capacities

for c=2:leng %Iterate through all the depths
    depthi=depth(c); %The current depth at the current iteration
    QugIndividualGroup(c)=QultSingle(c)*4; %Individual group bearing capacity method
end
QallgIndividualGroup=QugIndividualGroup/2; %Q group allowable = Q group ultimate/ FoS(=2)

eta=QallgBlock./QallgIndividualGroup; %The efficieny of the pile group, comparing block failure method to individual failure method


%for beta - To compare with the Alpha LCPC mehtod

QultB=zeros(leng,1); %Sizing the Q ult bearing capacity which will store Beta method results

sigma_v_prime=Design3SoilProfileDataS2(1:61,12); 

sigma_v_prime(1)=0;

for i=1:15 %Iterating for sands

    QultB(i)=0.8*sum(sigma_v_prime(1:i))*0.5*0.4/1000+60*sigma_v_prime(i)*pi*0.04;

end

for i=16:47 % Iterating for clays

    QultB(i)=QultB(15)-60*sigma_v_prime(15)*pi*0.04+0.5*sum(sigma_v_prime(16:i))*0.5*0.4/1000+30*sigma_v_prime(i)*pi*0.04;

end

for i=48:leng %Iterating for sands

    QultB(i)=QultB(47)-30*sigma_v_prime(47)*pi*0.04+0.8*sum(sigma_v_prime(16:i))*0.5*0.4/1000+60*sigma_v_prime(i)*pi*0.04;

end

Qall_Beta_MN=QultB/2000; % Dividing by FoS 2 and 1000 to convert from kPa to MPa.
Qall_Beta_kN=Qall_Beta_MN*1000;




    
    