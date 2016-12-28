complete<-function(directory, id=1:332){
     file_list<-list.files(directory, full.names = TRUE)
     my_data<-data.frame()
     for(i in id){
          n<-read.csv(file_list[i])
          obs<-nrow(na.omit(n))
          new_row<-c(i, obs)
          my_data<-rbind(my_data, new_row)
     }
     names(my_data)<-c('id', 'nobs')
     my_data
}
