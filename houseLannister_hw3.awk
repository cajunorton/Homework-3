#Run as: awk -f houseLannister_hw3.awk presidents.csv > test.log.awk
BEGIN {FS = ","}
	NR>1 {
	
		year=substr($4, length($4) -3)

		if (year >= 1900)

		print $2 ", from " $4 " to " $5 
}   
