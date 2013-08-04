#test merge using indivdiual files and PAC files
#garbage CID codes have been removed
#bars on pacs 90:10 have hypothetically been removed
#these are contributions from individuals to PACs

#create data

p.check<-c( 'C00000935', 'C90010604', 'C00075820', 'C00030718', 'C00053553', 'C00064766', 
'C00004275', 'C00109017', 'C00238725', 'C00029447', 'C90007907', 'C90010513', 
'C70000112', 'C00111278', 'C00106146', 'C00007880', 'C00096156', 'C00024521', 
'C00002840', 'C00024869', 'C00144766', 'C00071365', 'C00135368', 'C00027342', 
'C00000729', 'C00040998', 'C00011114', 'C00303024', 'C00235853', 'C00097568', 
'C00142711', 'C00003418', 'C00000901', 'C00186288', 'C00004036', 'C00034157', 
'C00016899', 'C00002972', 'C00016683', 'C00248716', 'C00004861', 'C00131185', 
'C00029504', 'C00088591', 'C00002089', 'C00000422', 'C00078451', 'C00002766', 
'C00024968', 'C00107235', 'C00005157', 'C00007922', 'C00211318', 'C00035451', 
'C00010322', 'C00003251', 'C00009936', 'C00093054', 'C00028860', 'C00032979', 
'C00010470', 'C00034488', 'C00386482', 'C00135558', 'C90004185', 'C00236489', 
'C00042366', 'C00005249', 'C90009358', 'C00280222', 'C00235739', 'C00022343', 
'C00023580', 'C00007542', 'C00030809', 'C00158881', 'C00027359', 'C00255752', 
'C00193433', 'C00110338', 'C00077321', 'C00012880', 'C00001016', 'C00193631', 
'C00009985', 'C00364778', 'C00251876', 'C00002469', 'C00010868', 'C00032698', 
'C00343459', 'C00105981', 'C00006080', 'C00227546', 'C00432260', 'C00140061', 
'C00027532', 'C00199703', 'C00008268')

#generate random variables w/ mean & sd
	var1<-rnorm(99,4,.9)
	var2<-rnorm(99,3,0.591607978)
	var3<-rnorm(99,2.75,0.447213595)

CID<-p.check
pacTest<-cbind(CID,var1,var2,var3)  

C.check<-  c(    'C00000935',    'C00001305',    'C00001313',    'C00002931',    'C00003418',    'C00005173', 
   'C00006486',    'C00008227',    'C00010603',    'C00011197',    'C00016899',    'C00019331', 
   'C00027466',    'C00031054',    'C00034033',    'C00038505',    'C00040220',    'C00041160', 
   'C00041269',    'C00042366',    'C00042622',    'C00044842',    'C00073791',    'C00074450', 
   'C00075820',    'C00078196',    'C00082925',    'C00088369',    'C00091009',    'C00099259', 
   'C00099267',    'C00105668',    'C00105973',    'C00114439',    'C00135558',    'C00136200', 
   'C00140590',    'C00143743',    'C00150672',    'C00153031',    'C00155952',    'C00156810', 
   'C00162339',   'C00165548',    'C00165688',    'C00167015',    'C00167320',    'C00178038', 
   'C00251801',    'C00255695',    'C00267153',    'C00274266',    'C00277350',    'C00292359', 
   'C00301366',    'C00314641',    'C00325357',    'C00326090',    'C00336644',    'C00337261', 
   'C00339622',    'C00342857',    'C00344234',    'C00344648',    'C00345876',    'C00347864', 
   'C00347948',    'C00350330',    'C00352963',    'C00365262',    'C00365742',    'C00369405', 
   'C00370007',    'C00370221',    'C00376038',    'C00380352',    'C00384545',    'C00386573', 
   'C00388421',    'C00402982',    'C00409052',    'C00412791',    'C00420695',    'C00421321', 
   'C00427047',    'C00437061',    'C00448498',    'C00451393',    'C00453738',    'C00467688') 

#generate random variables w/ mean & sd
	var1<-rnorm(90,4,.9)
	var2<-rnorm(90,3,0.591607978)
	var3<-rnorm(90,2.75,0.447213595)

	CID<-C.check
	candTest<-cbind(CID,var1,var2,var3)    

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data")
#writing table to csv
	out_file <- file("candTest.csv", open="a")
	write.table(candTest, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#writing table to csv
	out_file <- file("pacTest.csv", open="a")
	write.table(pacTest, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#clean house
rm(list = ls(), envir = globalenv())

#load file
	candTest<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\candTest.csv")
	pacTest<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\pacTest.csv")

#library
	library(sqldf)

#merge
	PAC<-sqldf("select * from pacTest join candTest using (CID)")

#check

#issue resolved
	#data needs to be cleaned for bad CID codes
	#bars need to be removed

