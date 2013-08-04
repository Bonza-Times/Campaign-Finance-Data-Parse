#load file
	retail<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\wed.meeting\\Retail1.csv")
#check
#library
	library(sqldf)

#aggregate by donor,year
	
	donor<-sqldf("select Cycle, ContribID,Contrib,ConFirst,Orgname,UltOrg,
		RealCode,Date,Amount, AdjAmount,Street,City,State,Zip,Gender,FecOccEmp,
		count (AdjAmount) total from retail group by 
		Cycle,ContribID")

	bigdonor<-sqldf("select * from donor where Amount >= 1000 group by
			Cycle,ContribID")

	bigID<-sqldf("select * from bigdonor join donor using (ContribID)
			group by Cycle,ContribID")

	influential<-sqldf("select Cycle, ContribID,Contrib,ConFirst,Orgname,
		UltOrg,RealCode,Date,Amount, AdjAmount,Street,City,State,Zip,
		Gender,FecOccEmp,count (AdjAmount) total from bigID group by 
		Cycle,Orgname")
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\wed.meeting")
#writing table to csv
	out_file <- file("influential.csv", open="a")
	write.table(influential, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#check

	littledonor<-sqldf("select * from donor where Amount < 1000 group by
			Cycle,ContribID")

	lilID<-sqldf("select * from littledonor join donor using (ContribID)
			group by Cycle,ContribID")

	otherdonor<-sqldf("select Cycle, ContribID,Contrib,ConFirst,Orgname,
		UltOrg,RealCode,Date,Amount, AdjAmount,Street,City,State,Zip,
		Gender,FecOccEmp,count (AdjAmount) total from lilID group by 
		Cycle,Orgname")
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\wed.meeting")
#writing table to csv
	out_file <- file("little  donors.csv", open="a")
	write.table(otherdonor, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
