# tidy_data CODEBOOK
for Coursera "Getting and Cleaning Data" peer review
run_analysis contains the code for analysing the data from the free dataset ref below:

Variable names:
- subject numer: 1-30
- activity: activity label, see description for further info: 1-6
- activity description:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
- all other variables:
    - time/freq: variable domain
    - Body/gravity: high/low pass filter signals to separate body or gravity acceleration
    - Acceleration/Gyro: signal from accelerometer or gyroscope
    - Jerk: if accelerometer signal is derived
    - Mean: mean signal
    - Std: standard deviation

"subject"                                       "activity"                                     
 [3] "Time_Body_Acceleration_-Mean_-X"               "Time_Body_Acceleration_-Mean_-Y"              
 [5] "Time_Body_Acceleration_-Mean_-Z"               "Time_Body_Acceleration_-Std_Dev-X"            
 [7] "Time_Body_Acceleration_-Std_Dev-Y"             "Time_Body_Acceleration_-Std_Dev-Z"            
 [9] "Time_GravityAcceleration_-Mean_-X"             "Time_GravityAcceleration_-Mean_-Y"            
[11] "Time_GravityAcceleration_-Mean_-Z"             "Time_GravityAcceleration_-Std_Dev-X"          
[13] "Time_GravityAcceleration_-Std_Dev-Y"           "Time_GravityAcceleration_-Std_Dev-Z"          
[15] "Time_Body_Acceleration_Jerk-Mean_-X"           "Time_Body_Acceleration_Jerk-Mean_-Y"          
[17] "Time_Body_Acceleration_Jerk-Mean_-Z"           "Time_Body_Acceleration_Jerk-Std_Dev-X"        
[19] "Time_Body_Acceleration_Jerk-Std_Dev-Y"         "Time_Body_Acceleration_Jerk-Std_Dev-Z"        
[21] "Time_Body_Gyro-Mean_-X"                        "Time_Body_Gyro-Mean_-Y"                       
[23] "Time_Body_Gyro-Mean_-Z"                        "Time_Body_Gyro-Std_Dev-X"                     
[25] "Time_Body_Gyro-Std_Dev-Y"                      "Time_Body_Gyro-Std_Dev-Z"                     
[27] "Time_Body_GyroJerk-Mean_-X"                    "Time_Body_GyroJerk-Mean_-Y"                   
[29] "Time_Body_GyroJerk-Mean_-Z"                    "Time_Body_GyroJerk-Std_Dev-X"                 
[31] "Time_Body_GyroJerk-Std_Dev-Y"                  "Time_Body_GyroJerk-Std_Dev-Z"                 
[33] "Time_Body_Acceleration_Mag-Mean_"              "Time_Body_Acceleration_Mag-Std_Dev"           
[35] "Time_GravityAcceleration_Mag-Mean_"            "Time_GravityAcceleration_Mag-Std_Dev"         
[37] "Time_Body_Acceleration_JerkMag-Mean_"          "Time_Body_Acceleration_JerkMag-Std_Dev"       
[39] "Time_Body_GyroMag-Mean_"                       "Time_Body_GyroMag-Std_Dev"                    
[41] "Time_Body_GyroJerkMag-Mean_"                   "Time_Body_GyroJerkMag-Std_Dev"                
[43] "Freq_Body_Acceleration_-Mean_-X"               "Freq_Body_Acceleration_-Mean_-Y"              
[45] "Freq_Body_Acceleration_-Mean_-Z"               "Freq_Body_Acceleration_-Std_Dev-X"            
[47] "Freq_Body_Acceleration_-Std_Dev-Y"             "Freq_Body_Acceleration_-Std_Dev-Z"            
[49] "Freq_Body_Acceleration_-Mean_Freq-X"           "Freq_Body_Acceleration_-Mean_Freq-Y"          
[51] "Freq_Body_Acceleration_-Mean_Freq-Z"           "Freq_Body_Acceleration_Jerk-Mean_-X"          
[53] "Freq_Body_Acceleration_Jerk-Mean_-Y"           "Freq_Body_Acceleration_Jerk-Mean_-Z"          
[55] "Freq_Body_Acceleration_Jerk-Std_Dev-X"         "Freq_Body_Acceleration_Jerk-Std_Dev-Y"        
[57] "Freq_Body_Acceleration_Jerk-Std_Dev-Z"         "Freq_Body_Acceleration_Jerk-Mean_Freq-X"      
[59] "Freq_Body_Acceleration_Jerk-Mean_Freq-Y"       "Freq_Body_Acceleration_Jerk-Mean_Freq-Z"      
[61] "Freq_Body_Gyro-Mean_-X"                        "Freq_Body_Gyro-Mean_-Y"                       
[63] "Freq_Body_Gyro-Mean_-Z"                        "Freq_Body_Gyro-Std_Dev-X"                     
[65] "Freq_Body_Gyro-Std_Dev-Y"                      "Freq_Body_Gyro-Std_Dev-Z"                     
[67] "Freq_Body_Gyro-Mean_Freq-X"                    "Freq_Body_Gyro-Mean_Freq-Y"                   
[69] "Freq_Body_Gyro-Mean_Freq-Z"                    "Freq_Body_Acceleration_Mag-Mean_"             
[71] "Freq_Body_Acceleration_Mag-Std_Dev"            "Freq_Body_Acceleration_Mag-Mean_Freq"         
[73] "Freq_Body_Body_Acceleration_JerkMag-Mean_"     "Freq_Body_Body_Acceleration_JerkMag-Std_Dev"  
[75] "Freq_Body_Body_Acceleration_JerkMag-Mean_Freq" "Freq_Body_Body_GyroMag-Mean_"                 
[77] "Freq_Body_Body_GyroMag-Std_Dev"                "Freq_Body_Body_GyroMag-Mean_Freq"             
[79] "Freq_Body_Body_GyroJerkMag-Mean_"              "Freq_Body_Body_GyroJerkMag-Std_Dev"           
[81] "Freq_Body_Body_GyroJerkMag-Mean_Freq"          "activity_description"   