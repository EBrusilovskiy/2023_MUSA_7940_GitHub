setwd("C:\\Users\\Administrator\\Dropbox\\Documents\\Work and School\\Teaching\\2021 Summer Institute\\Lecture 8 - T-Tests and Correlations")
indsamp <- read.csv("Lecture 8 - Independent Samples T-Test.csv")
mean(indsamp$FatContent[indsamp$Brand==1])
sd(indsamp$FatContent[indsamp$Brand==1])
mean(indsamp$FatContent[indsamp$Brand==2])
sd(indsamp$FatContent[indsamp$Brand==2])
#Results are a little different here than in the slides because of rounding
t.test(indsamp$FatContent[indsamp$Brand==1],indsamp$FatContent[indsamp$Brand==2],var.equal=FALSE,alternative = "two.sided")

pairedsamp <- read.csv("Lecture 8 - Paired T-Test.csv")
t.test(pairedsamp$Before, pairedsamp$After, paired = TRUE, alternative = "two.sided")
#Results are a little different here than in the slides because of rounding
mean(pairedsamp$Diff)

cor(pairedsamp$Before, pairedsamp$After)
#H0: population correlation coefficient = 0; 
#Ha: population correlation coefficient != 0
cor.test(pairedsamp$Before, pairedsamp$After)