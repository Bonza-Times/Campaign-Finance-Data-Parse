na1<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name4 group by 
	ContribID,Cycle") 
na2<-sqldf("select Cycle,FECTransID,ContribID,Contrib,ConFirst,RecipID,
	Orgname,UltOrg,RealCode,Date,Amount,Street,City,State,Zip,
	RecipCode,Type,CmteID,OtherID,Gender,FecOccEmp from name5 group by 
	ContribID,Cycle")

name<-rbind(na1,na2)