rm(list=ls())
setwd("//smb.uni-kassel.de/fb11/gnr/transfer/projects/FOR2432_in_progress/Satya/Jay")

pacman::p_load(tidyverse, sf, CAST)


# Read Train Shape file
train_shp <- st_read("./Data/X-train/X_train/X_train.shp")

# Remove the geometry column
train_df <- train_shp %>% as_tibble() %>% 
  dplyr::select(1:16)


# Calculate train DI values for the train data set
tictoc::tic("DI compuation:")
train_DI <- trainDI(model = NA, 
                       train = train_df, 
                       variables = names(train_df))
tictoc::toc()


# Read Test shape file
test_shp <- st_read("./Data/New_data (Z)/new_data6.shp")

# Remove the geometry column of the test shape
test_df <- test_shp %>% as_tibble() %>% 
  dplyr::select(1:16)


# Calculate DI values & AOA for the test data set
tictoc::tic("AOA compuation for test:")
test_AOA <- aoa(newdata = test_df, 
                      trainDI = train_DI, 
                      variables = names(test_df))
tictoc::toc()

# Check the proportions of AOA values
prop.table(table(test_AOA$AOA))*100

# Add DI and AOA values back to Test Shape file
test_shp$DI <- test_AOA$DI
test_shp$AOA <- test_AOA$AOA


st_write(test_shp %>% dplyr::select(1:16, 18, 19, 17), 
         "./Data/New_data (Z)/new_data6_with_DI_AOA.shp")
