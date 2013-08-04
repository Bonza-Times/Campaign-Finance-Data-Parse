#merge pac, cand file for each year

#load file
	#PAC
	pacs90<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs90.csv")
	pacs92<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs92.csv")
	pacs94<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs94.csv")
	pacs96<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs96.csv")
	pacs98<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs98.csv")
	pacs00<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs00.csv")
	pacs02<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs02.csv")
	pacs04<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs04.csv")
	pacs06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs06.csv")
	pacs08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs08.csv")
	pacs10<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs10.csv")
	cands90<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands90.csv")
	cands92<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands92.csv")
	cands94<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands94.csv")
	cands96<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands96.csv")
	cands98<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands98.csv")
	cands00<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands00.csv")
	cands02<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands_02.csv")
	cands04<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands04.csv")
	cands06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands06.csv")
	cands08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands08.csv")
	cands10<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands10.csv")

#check
	
#library

	library(sqldf)

#merging
	m90<-sqldf("select * from pacs90 join cands90 using (Cycle)")
	m92<-sqldf("select * from pacs92 join cands92 using (Cycle)")
	m94<-sqldf("select * from pacs94 join cands94 using (Cycle)")
	m96<-sqldf("select * from pacs96 join cands96 using (Cycle)")
	m98<-sqldf("select * from pacs98 join cands98 using (Cycle)")
	m00<-sqldf("select * from pacs00 join cands00 using (Cycle)")
	m02<-sqldf("select * from pacs02 join cands02 using (Cycle)")
	m04<-sqldf("select * from pacs04 join cands04 using (Cycle)")
	m06<-sqldf("select * from pacs06 join cands06 using (Cycle)")
	m08<-sqldf("select * from pacs08 join cands08 using (Cycle)")
	m10<-sqldf("select * from cand08 join pac08 using (CID)")

	cpac08<-sqldf("select * from m10 group by PACID")

	

#check



