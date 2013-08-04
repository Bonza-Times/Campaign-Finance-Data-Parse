#load file
	b1<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\comp 14\\MY1.csv")
	b2<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\comp 14\\MY2.csv")
	b3<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\comp 14\\MY8.csv")
	b4<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\comp 14\\maydept1.csv")
	b5<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\comp 14\\maydept2.csv")
	#b6<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\comp 10\\no idea1.csv")
	#b7<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\comp 9\\jcpenney.csv")
	#b8<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\comp 6\\JC8.csv")
#merge file
	best<-rbind(b1,b2,b3,b4,b5)
#check

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies")
#writing table to csv
	out_file <- file("May Dept Stores.csv", open="a")
	write.table(best, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
