pollutantmean<-function(directory, pollutant, id=1:332){
     file_list<-list.files(directory, full.names = TRUE)
     my_data<-data.frame()
     for(i in id){
          my_data<-rbind(my_data, read.csv(file_list[i]))
     }
     my_mean<-round(mean(my_data[[pollutant]], na.rm = TRUE), digits = 3)
     my_mean
}