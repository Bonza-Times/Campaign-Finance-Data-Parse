#Merge retail companies

#load files
 	bestbuy<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\BestBuy.csv")
	circuitcity<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\Circuit City.csv")
	diarymart<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\Dairy Mart.csv")
	homedepot<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\Home Depot.csv")
	limitedinc<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\Limited Inc.csv")
	montward<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\MontgomeryWard.csv")
	radioshack<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\Radioshack.csv")
	saksfifthave<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\SaksFifthAve.csv")
	saksinc<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\SaksInc.csv")
	cashamerica<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\CashAmericaIntl.csv")
	cvscorp<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\CVSCorp.csv")
	gapinc<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\GapInc.csv")
	jcpenney<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\JC Penney.csv")
	maydept<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\May Dept Stores.csv")
	pier1<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\Pier1.csv")
	riteaid<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\3am data\\retail companies\\RiteAid.csv")

#check
	
#library
	
	library(sqldf)

#merge
 	
	na1<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from bestbuy group by 
	ContribID,Cycle") 

	na2<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from circuitcity group by 
	ContribID,Cycle")

	na3<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from diarymart group by 
	ContribID,Cycle")

	na4<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from homedepot group by 
	ContribID,Cycle")

	na5<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from limitedinc group by 
	ContribID,Cycle")

	na6<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from montward group by 
	ContribID,Cycle")

	na7<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from radioshack group by 
	ContribID,Cycle")

	na8<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from saksfifthave group by 
	ContribID,Cycle")

	na9<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from saksinc group by 
	ContribID,Cycle")

	na10<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from cashamerica group by 
	ContribID,Cycle")

	na11<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from cvscorp group by 
	ContribID,Cycle")

	na12<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from gapinc group by 
	ContribID,Cycle")

	na13<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from jcpenney group by 
	ContribID,Cycle")

	na14<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from maydept group by 
	ContribID,Cycle")

	na15<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from pier1 group by 
	ContribID,Cycle")

	na16<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from riteaid group by 
	ContribID,Cycle")

#check	

	retail<-rbind(na1,na2,na3,na4,na5,na6,na7,na8,na9,na10,na11,na12,
			na13,na14,na15)

#file name is now retail

#organize by specs

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\wed.meeting")
#writing table to csv
	out_file <- file("jake.csv", open="a")
	write.table(jake, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#check


