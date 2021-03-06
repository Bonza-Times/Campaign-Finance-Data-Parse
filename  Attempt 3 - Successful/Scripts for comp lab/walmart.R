#Individual Donors for Retail Sales Companies 1990-2010

#load file

	indiv00.1<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv00.1.csv")
	indiv00.2<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv00.2.csv")
	indiv00.3<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv00.3.csv")
	indiv00.4<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv00.4.csv")
	indiv00.5<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv02.1.csv")

#check

#library
	
	library(sqldf)

#search for name

	name1<-sqldf("select * from 'indiv00.1' where Orgname like '%Wal-Mart Stores% '")	
	name2<-sqldf("select * from 'indiv00.2' where Orgname like '%Wal-Mart Stores% '")
	name3<-sqldf("select * from 'indiv00.3' where Orgname like '%Wal-Mart Stores% '")
	name4<-sqldf("select * from 'indiv00.4' where Orgname like '%Wal-Mart Stores% '")
	name5<-sqldf("select * from 'indiv00.5' where Orgname like '%Wal-Mart Stores% '")

#check

#merge data
	
	na1<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name1 group by 
	ContribID,Cycle") 

	na2<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name2 group by 
	ContribID,Cycle")

	na3<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name3 group by 
	ContribID,Cycle") 

	na4<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name4 group by 
	ContribID,Cycle")

	na5<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name5 group by 
	ContribID,Cycle") 

#check

#save data

	setwd("C:\\Users\\tbrown11\\Desktop\\Data")

	if(!exists("na1", mode="global.env"))save(na1,file="na1.Rdata")
	if(!exists("na2", mode="global.env"))save(na2,file="na2.Rdata")
	if(!exists("na3", mode="global.env"))save(na3,file="na3.Rdata")
	if(!exists("na4", mode="global.env"))save(na4,file="na4.Rdata")
	if(!exists("na5", mode="global.env"))save(na5,file="na5.Rdata")

#check

#clean house
	
	rm(list = ls(), envir = globalenv())

#check

#load file

	indiv00.6<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv02.2.csv")
	indiv00.7<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv02.3.csv")
	indiv00.8<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv04.1.csv")
	indiv00.9<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv04.2.csv")
	indiv00.10<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv04.3.csv")

#check

#library
	
	library(sqldf)

#search for name	

	name6<-sqldf("select * from 'indiv00.6' where Orgname like '%Wal-Mart Stores% '")
	name7<-sqldf("select * from 'indiv00.7' where Orgname like '%Wal-Mart Stores% '")
	name8<-sqldf("select * from 'indiv00.8' where Orgname like '%Wal-Mart Stores% '")
	name9<-sqldf("select * from 'indiv00.9' where Orgname like '%Wal-Mart Stores% '")
	name10<-sqldf("select * from 'indiv00.10' where Orgname like '%Wal-Mart Stores% '")   

#check

#merge data

	na6<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name6 group by 
	ContribID,Cycle") 

	na7<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name7 group by 
	ContribID,Cycle")

	na8<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name8 group by 
	ContribID,Cycle") 

	na9<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name9 group by 
	ContribID,Cycle")

	na10<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name10 group by 
	ContribID,Cycle") 

#check

#save data

	setwd("C:\\Users\\tbrown11\\Desktop\\Data")

	if(!exists("na6", mode="global.env"))save(na6,file="na6.Rdata")
	if(!exists("na7", mode="global.env"))save(na7,file="na7.Rdata")
	if(!exists("na8", mode="global.env"))save(na8,file="na8.Rdata")
	if(!exists("na9", mode="global.env"))save(na9,file="na9.Rdata")
	if(!exists("na10", mode="global.env"))save(na10,file="na10.Rdata")

#check

#clean house

	rm(list = ls(), envir = globalenv())

#check

#load file

	indiv00.11<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv04.4.csv")
	indiv00.12<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv04.5.csv")
	indiv00.13<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv04.6.csv")
	indiv00.14<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv06.1.csv")
	indiv00.15<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv06.2.csv")

#check

#library

	library(sqldf)

#search for name

	name11<-sqldf("select * from 'indiv00.11' where Orgname like '%Wal-Mart Stores% '")	
	name12<-sqldf("select * from 'indiv00.12' where Orgname like '%Wal-Mart Stores% '")
	name13<-sqldf("select * from 'indiv00.13' where Orgname like '%Wal-Mart Stores% '")
	name14<-sqldf("select * from 'indiv00.14' where Orgname like '%Wal-Mart Stores% '")
	name15<-sqldf("select * from 'indiv00.15' where Orgname like '%Wal-Mart Stores% '")

#merge

	na11<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name11 group by 
	ContribID,Cycle") 

	na12<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name12 group by 
	ContribID,Cycle")

	na13<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name13 group by 
	ContribID,Cycle") 

	na14<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name14 group by 
	ContribID,Cycle")

	na15<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name15 group by 
	ContribID,Cycle") 

#check

#save data

	setwd("C:\\Users\\tbrown11\\Desktop\\Data")

	if(!exists("na11", mode="global.env"))save(na11,file="na11.Rdata")
	if(!exists("na12", mode="global.env"))save(na12,file="na12.Rdata")
	if(!exists("na13", mode="global.env"))save(na13,file="na13.Rdata")
	if(!exists("na14", mode="global.env"))save(na14,file="na14.Rdata")
	if(!exists("na15", mode="global.env"))save(na15,file="na15.Rdata")

#check

#clean house

	rm(list = ls(), envir = globalenv())

#check	

#load file

	indiv00.16<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv06.3.csv")
	indiv00.17<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv06.4.csv")
	indiv00.18<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv06.5.csv")
	indiv00.19<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv08.1.csv")
	indiv00.20<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv08.2.csv")

#check

#library

	library(sqldf)

#search for name
	
	name16<-sqldf("select * from 'indiv00.16' where Orgname like '%Wal-Mart Stores% '")
	name17<-sqldf("select * from 'indiv00.17' where Orgname like '%Wal-Mart Stores% '")
	name18<-sqldf("select * from 'indiv00.18' where Orgname like '%Wal-Mart Stores% '")
	name19<-sqldf("select * from 'indiv00.19' where Orgname like '%Wal-Mart Stores% '")
	name20<-sqldf("select * from 'indiv00.20' where Orgname like '%Wal-Mart Stores% '")

#check 

#merge

	na16<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name16 group by 
	ContribID,Cycle") 

	na17<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name17 group by 
	ContribID,Cycle")

	na18<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name18 group by 
	ContribID,Cycle") 

	na19<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name19 group by 
	ContribID,Cycle")

	na20<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name20 group by 
	ContribID,Cycle") 

#check

#save data

	setwd("C:\\Users\\tbrown11\\Desktop\\Data")

	if(!exists("na16", mode="global.env"))save(na16,file="na16.Rdata")
	if(!exists("na17", mode="global.env"))save(na17,file="na17.Rdata")
	if(!exists("na18", mode="global.env"))save(na18,file="na18.Rdata")
	if(!exists("na19", mode="global.env"))save(na19,file="na19.Rdata")
	if(!exists("na20", mode="global.env"))save(na20,file="na20.Rdata")

#check

#clean house

	rm(list = ls(), envir = globalenv())

#check	

#load file

	indiv00.21<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv08.3.csv")
	indiv00.22<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv08.4.csv")
	indiv00.23<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv08.5.csv")
	indiv00.24<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv08.6.csv")
	indiv00.25<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv08.7.csv")

#check

#library

	library(sqldf)

#search for name

	name21<-sqldf("select * from 'indiv00.21' where Orgname like '%Wal-Mart Stores% '")	
	name22<-sqldf("select * from 'indiv00.22' where Orgname like '%Wal-Mart Stores% '")
	name23<-sqldf("select * from 'indiv00.23' where Orgname like '%Wal-Mart Stores% '")
	name24<-sqldf("select * from 'indiv00.24' where Orgname like '%Wal-Mart Stores% '")
	name25<-sqldf("select * from 'indiv00.25' where Orgname like '%Wal-Mart Stores% '")

#check	

#merge

	na21<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name21 group by 
	ContribID,Cycle") 

	na22<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name22 group by 
	ContribID,Cycle")

	na23<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name23 group by 
	ContribID,Cycle") 

	na24<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name24 group by 
	ContribID,Cycle")

	na25<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name25 group by 
	ContribID,Cycle") 

#check

#save data

	setwd("C:\\Users\\tbrown11\\Desktop\\Data")

	if(!exists("na21", mode="global.env"))save(na21,file="na21.Rdata")
	if(!exists("na22", mode="global.env"))save(na22,file="na22.Rdata")
	if(!exists("na23", mode="global.env"))save(na23,file="na23.Rdata")
	if(!exists("na24", mode="global.env"))save(na24,file="na24.Rdata")
	if(!exists("na25", mode="global.env"))save(na25,file="na25.Rdata")

#check

#clean house

	rm(list = ls(), envir = globalenv())

#check

#Load file

	indiv00.26<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv08.8.csv")
	indiv00.27<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv08.9.csv")
	indiv00.28<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv10.1.csv")
	indiv00.29<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv10.2.csv")
	indiv00.30<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv10.3.csv")

#check

#library

	library(sqldf)

#search for name

	name26<-sqldf("select * from 'indiv00.26' where Orgname like '%Wal-Mart Stores% '")	
	name27<-sqldf("select * from 'indiv00.27' where Orgname like '%Wal-Mart Stores% '")
	name28<-sqldf("select * from 'indiv00.28' where Orgname like '%Wal-Mart Stores% '")
	name29<-sqldf("select * from 'indiv00.29' where Orgname like '%Wal-Mart Stores% '")
	name30<-sqldf("select * from 'indiv00.30' where Orgname like '%Wal-Mart Stores% '")

#check

#merge

	na26<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name26 group by 
	ContribID,Cycle") 

	na27<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name27 group by 
	ContribID,Cycle")

	na28<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name28 group by 
	ContribID,Cycle") 

	na29<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name29 group by 
	ContribID,Cycle")

	na30<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name30 group by 
	ContribID,Cycle") 

#check

#save data

	setwd("C:\\Users\\tbrown11\\Desktop\\Data")

	if(!exists("na26", mode="global.env"))save(na26,file="na26.Rdata")
	if(!exists("na27", mode="global.env"))save(na27,file="na27.Rdata")
	if(!exists("na28", mode="global.env"))save(na28,file="na28.Rdata")
	if(!exists("na29", mode="global.env"))save(na29,file="na29.Rdata")
	if(!exists("na30", mode="global.env"))save(na30,file="na30.Rdata")

#check

#clean house

	rm(list = ls(), envir = globalenv())

#check

#load file

	indiv00.31<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv10.4.csv")
	indiv00.32<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv10.5.csv")
	indiv00.33<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv96.csv")
	indiv00.34<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv96.2.csv")
	indiv00.35<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv98.csv")

#check

#library

	library(sqldf)

#search for name

	name31<-sqldf("select * from 'indiv00.31' where Orgname like '%Wal-Mart Stores% '")	
	name32<-sqldf("select * from 'indiv00.32' where Orgname like '%Wal-Mart Stores% '")
	name33<-sqldf("select * from 'indiv00.33' where Orgname like '%Wal-Mart Stores% '")
	name34<-sqldf("select * from 'indiv00.34' where Orgname like '%Wal-Mart Stores% '")
	name35<-sqldf("select * from 'indiv00.35' where Orgname like '%Wal-Mart Stores% '")
	
#check

#merge

	na31<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name31 group by 
	ContribID,Cycle") 

	na32<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name32 group by 
	ContribID,Cycle")

	na33<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name33 group by 
	ContribID,Cycle") 

	na34<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name34 group by 
	ContribID,Cycle")

	na35<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name35 group by 
	ContribID,Cycle") 

#check

#save data

	setwd("C:\\Users\\tbrown11\\Desktop\\Data")

	if(!exists("na31", mode="global.env"))save(na31,file="na31.Rdata")
	if(!exists("na32", mode="global.env"))save(na32,file="na32.Rdata")
	if(!exists("na33", mode="global.env"))save(na33,file="na33.Rdata")
	if(!exists("na34", mode="global.env"))save(na34,file="na34.Rdata")
	if(!exists("na35", mode="global.env"))save(na35,file="na35.Rdata")

#check

#clean house

	rm(list = ls(), envir = globalenv())

#check

#load file

	indiv00.36<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv98.2.csv")
	indiv00.37<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indiv98.3.csv")
	indiv00.38<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indivs90.csv")
	indiv00.39<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indivs92.csv")
	indiv00.40<-read.csv("C:\\Users\\tbrown11\\Desktop\\indivs\\indivs94.csv")

#check

#library
	
	library(sqldf)

#search for name

#check
	name36<-sqldf("select * from 'indiv00.36' where Orgname like '%Wal-Mart Stores% '")
	name37<-sqldf("select * from 'indiv00.37' where Orgname like '%Wal-Mart Stores% '")
	name38<-sqldf("select * from 'indiv00.38' where Orgname like '%Wal-Mart Stores% '")
	name39<-sqldf("select * from 'indiv00.39' where Orgname like '%Wal-Mart Stores% '")
	name40<-sqldf("select * from 'indiv00.40' where Orgname like '%Wal-Mart Stores% '")

#check

#merge

	na36<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name36 group by 
	ContribID,Cycle") 

	na37<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name37 group by 
	ContribID,Cycle")
	
	na38<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name38 group by 
	ContribID,Cycle") 
	
	na39<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name39 group by 
	ContribID,Cycle")
	
	na40<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name40 group by 
	ContribID,Cycle") 

#check

#save data

	setwd("C:\\Users\\tbrown11\\Desktop\\Data")

	if(!exists("na36", mode="global.env"))save(na36,file="na36.Rdata")
	if(!exists("na37", mode="global.env"))save(na37,file="na37.Rdata")
	if(!exists("na38", mode="global.env"))save(na38,file="na38.Rdata")
	if(!exists("na39", mode="global.env"))save(na39,file="na39.Rdata")
	if(!exists("na40", mode="global.env"))save(na40,file="na40.Rdata")

#check

#clean house

	rm(list = ls(), envir = globalenv())

#check

#load file

	a1<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na1.Rdata")
	a2<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na2.Rdata")
	a3<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na3.Rdata")
	a4<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na4.Rdata")
	a5<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na5.Rdata")
	a6<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na6.Rdata")
	a7<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na7.Rdata")
	a8<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na8.Rdata")
	a9<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na9.Rdata")
	a10<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na10.Rdata")
	a11<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na11.Rdata")
	a12<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na12.Rdata")
	a13<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na13.Rdata")
	a14<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na14.Rdata")
	a15<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na15.Rdata")
	a16<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na16.Rdata")
	a17<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na17.Rdata")
	a18<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na18.Rdata")
	a19<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na19.Rdata")
	a20<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na20.Rdata")
	a21<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na21.Rdata")
	a22<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na22.Rdata")
	a23<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na23.Rdata")
	a24<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na24.Rdata")
	a25<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na25.Rdata")
	a26<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na26.Rdata")
	a27<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na27.Rdata")
	a28<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na28.Rdata")
	a29<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na29.Rdata")
	a30<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na30.Rdata")
	a31<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na31.Rdata")
	a32<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na32.Rdata")
	a33<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na33.Rdata")
	a34<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na34.Rdata")
	a35<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na35.Rdata")
	a36<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na36.Rdata")
	a37<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na37.Rdata")
	a38<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na38.Rdata")
	a39<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na39.Rdata")
	a40<-load("C:\\Users\\tbrown11\\Desktop\\Data\\na40.Rdata")

#global environment

	b<-c(ls())
	B<-paste("n",b)
	paste(B,",")	

#clean in text editor

#check		#check		#check		#check		#check
#check		#check		#check		#check		#check
#check		#check		#check		#check		#check

#Row bind


	name<-rbind(

















	)


#write table
#library
	library(XML)
	setwd("C:\\Users\\tbrown11\\Desktop\\Data\\Retail")
#writing table to csv
	out_file <- file("Walmart.csv", open="a")
	write.table(name, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check

#clean house

	rm(list = ls(), envir = globalenv())

#check
