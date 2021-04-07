
# loading the data
data = read.csv("C:\\Users\\ASUS\\Documents\\r_notebooks\\data\\heart.csv",header = TRUE)



# preprocessing 
data$sex[data$sex == 0] = "Female"
data$sex[data$sex == 1] = "Male"

data$cp[data$cp == 0] = "LowPain"
data$cp[data$cp == 1] = "Pain"
data$cp[data$cp == 2] = "HighPain"
data$cp[data$cp == 3] = "VHighpain"

data$target[data$target == 1] = "Yes"
data$target[data$target == 0] = "No"

#---------------------------------------------------------------------
# hypothesis1 
# testing whether sex and chest pain are independent or not 
# H NULL =  chest pain and sex are independent 
# H alternate = chest pain and sex are related 

# we are going to do chi sqaure test for independence on hear t disease dataset.

table(data$sex, data$cp)   # contigency table 

barplot(table(data$sex, data$cp) )

chisq.test(table(data$sex, data$cp))

# pvalue > alpah level of 0.05 so we accept the null hypotheiss
# so sex and chest pain are independent
chisq.test(table(data$sex, data$cp))$expected   # expected counts 

#------------------------------------------------------------------------------

# Hypothesis 2 
# testing whether "rest ECG" and "hear disease" are independent or not 

data$restecg[data$restecg == 0] =  "normal"
data$restecg[data$restecg == 1] =  "ST-abnormal"
data$restecg[data$restecg == 2] =  "hypertrophy"

# H NULL =  rest ECG and heart disease are independent 
# H alternate = rest ECG and hear disease are related 

cont_table = table( data$target, data$restecg)   # contigency table
cont_table

barplot(table( data$target, data$restecg))

chisq.test(cont_table)

# here p value is less than the alpha level so we reject the null hypothesis
# we conclude that rest ECG and heart disease are related.
expect_table = chisq.test(cont_table)$expected 
expect_table




# goodness of fit test
## =============================================================

table(data$restecg)
restECG = c(4, 147, 152)
names(restECG) = c("hypertrophy","normal","ST-abnormal")

probabilities =c(1/3,1/3,1/3)

 
# Ho : proportion of patients in each category of restECG is 1/3 
# H1 : proportion of patients in each category of restECG is not  1/3
chisq.test(restECG, p = probabilities)










