
library(XML)
URL <- 'http://www.ece.fcu.edu.tw/wSite/ct?xItem=fffeb2d3603ed3fa&ctNode=13774&mp=490101&submit=%E5%80%8B%E4%BA%BA%E8%B3%87%E6%96%99'
chung <- readHTMLTable(URL)

names(chung)[5]
#chung$`張真誠 老師的基本資料`

#as.data.frame(chung[names(chung)[5]])
#write.csv(as.data.frame(chung[names(chung)[5]])[-1,],file = 'D:/mrchungData1.csv')


endNum <- length(names(chung)[ names(chung) != 'NULL' ]) - 1
useName <- names(chung)[ names(chung) != 'NULL' ]
URLName <- paste0('D:/mrchungData_',useName,'.csv')

for (i in 1:endNum){
  write.csv(as.data.frame(chung[useName[i]])[-1,],file = URLName[i])
}


