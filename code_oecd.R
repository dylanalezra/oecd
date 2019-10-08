rm(list = ls())

# OECD - Online test 

# Libraries

library("wbstats")
install.packages("devtools")


# Import data 

#First, we find the code names of the indicators, through the World Bank Methodology that details
# the way the SCI are constructed and gives us the codes
#And we also add the actual scores

indicators <- c("IQ.SCI.MTHD","IQ.SCI.OVRL",
                "IQ.SCI.PRDC",
                "IQ.SCI.SRCE",
"5.51.01.09.water",
"3.01.04.01.agcen",
"2.04.01.01.excncpt",
"5.51.01.04.immun",
"5.51.01.02.malnut",
"5.51.01.03.mortal",
"2.01.03.01.prcpbase",
"5.04.01.01.exdebt",
"5.51.01.07.gender",
"3.02.01.02.fscov",
"5.13.01.01.hlthsurv",
"5.51.01.05.hiv",
"5.04.01.02.impexp",
"5.51.01.01.poverty",
"5.01.01.01.indust",
"5.51.01.06.matern",
"2.01.01.02.nabase",
"5.13.01.01.who",
"5.51.01.10.gdp",
"3.11.01.01.popcen",
"5.14.01.01.povsurv",
"5.51.01.08.primcomp",
"5.21.01.01.sdds",
"5.12.01.01.unesco",
"3.11.01.03.popreg")

df <- wb(country = "all", indicators, lang = "en",removeNA = FALSE, include_lastUpdated = F)

#We export the database as a csv

setwd("C:/Users/Dylan Alezra/Documents")
write.csv(df, "dylan_alezra.csv")


