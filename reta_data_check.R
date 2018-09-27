# here is the schema. 

schema <-  read.delim("~/schema.txt",sep = "\n")


# Time to rewrite this for R. 

schema <- schema[-1,]

names <- c()
types <- c()

for(entry in schema) {
    
  interm <- gsub(pattern = " |name|'|:|\\{|\\}|type", replacement = "",
                 entry)
  
  result <- substring(interm,1,nchar(interm)-1)
  splitted_result <- strsplit(result,split = ",")
  
  
  names <- append(names,splitted_result[[1]][1])
  types <- append(types, splitted_result[[1]][2])
  
  }

# Fixed some issues with the names
names <- names[-length(names)+1:-length(names)]
types <- types[-length(types)+1:-length(types)]
types[length(types)] = "STRING"

# Now ready to replace all the columns in a dataset with the following names 




" 0  = Possessions (Puerto Rico, Guam, Canal Zone, Virgin Islands, and American Samoa)
1  = All cities 250,000 or over:
  1A= Cities 1,000,000 or over
1B= Cities from 500,000 thru 999,999
1C= Cities from 250,000 thru 499,999
2  =  Cities from 100,000 thru 249,000
3  =  Cities from 50,000 thru 99,000
4  =  Cities from 25,000 thru 49,999
5  =  Cities from 10,000 thru 24,999
6  =  Cities from 2,500 thru 9,999
7  =  Cities under 2,500
8  =  Non-MSA Counties:
  8A= Non-MSA counties 100,000 or over
8B= Non-MSA counties from 25,000 thru 99,999
8C= Non-MSA counties from 10,000 thru 24,999
8D= Non-MSA counties under 10,000
8E= Non-MSA State Police
9  = MSA Counties:
  9A= MSA counties 100,000 or over
9B= MSA counties from 25,000 thru 99,999
9C= MSA counties from 10,000 thru 24,999
9D= MSA counties under 10,000
9E= MSA State Police

REGION 0 - POSESSIONS
0  =  Possessions
Div. 0:	
  54  American Samoa
52  Canal Zone
55  Guam
53  Puerto Rico
62  Virgin Islands

REGION I  - NORTHEAST

1  =  New  England
Div. 1:
  06  Connecticut
18  Maine
20  Massachusetts
28  New Hampshire		
38  Rhode Island
44  Vermont

2  = Middle  Atlantic
Div. 2:
  29  New Jersey
31  New York		
37  Pennsylvania

REGION II  -  NORTH CENTRAL

3  =  East North Central
Div. 3:
  12  Illinois
13  Indiana
21  Michigan
34   Ohio
48  Wisconsin

4  =  West North Central
Div. 4:	
  14  Iowa
15  Kansas
22  Minnesota
24  Missouri
26  Nebraska
33  North Dakota
40  South Dakota

REGION III   -   SOUTH

5  =  South Atlantic
Div. 5:	
  07  Delaware
08  District of Columbia
09  Florida
10  Georgia
19  Maryland
32  North Carolina
39  South Carolina
45   Virginia
47  West Virginia

6  =  East South Central
Div. 6:	
  01  Alabama
16  Kentucky		
23  Mississippi
41  Tennessee

7  =  West South Central
Div. 7:	
  03  Arkansas
17  Louisiana
35  Oklahoma
42  Texas

REGION  IV  -  WEST

8  =  Mountain
Div. 8:	
  02  Arizona
05  Colorado
11  Idaho
25  Montana
27  Nevada			
30  New Mexico
43  Utah		
49  Wyoming


9  =  Pacific
Div. 9:	
  50  Alaska
04  California
51  Hawaii			
36  Oregon
46 Washington
"


