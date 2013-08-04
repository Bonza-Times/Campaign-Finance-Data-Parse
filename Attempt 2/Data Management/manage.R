#converting text files to csv 

#scrub bars in notepad
#Candidates
	d = read.table("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\convert\\04\\cands_04.txt", 
            sep=",", 
            col.names=c("Cycle", "FECCandID","CID","FirstLastP","Party","DistIDRunFor","DistIDCurr","CurrCand","CycleCand","CRPICO","RecipCode","NoPacs"))
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\Candidate.crp")
#writing table to csv
	out_file <- file("cands04.csv", open="a")
	write.table(d, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)