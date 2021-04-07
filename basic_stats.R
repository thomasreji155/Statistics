
# Enter the data  and make stem and leaf plot
# x=c(60 85 72 59 37 75 93 7 98 63 41 90 5 17 97)
data = scan()
stem(data,2)
#-----------------------------------------------------------
# 
# values  = 80 82 88 91 91 95 95 97 98 101 106 106 109 110 111
values = scan()
stem(values)
hist(values)

# ----------------------------------------------------------------


x1 = rnorm(100)
x2 = rnorm(100)
hist1 = hist(x1)
hist2 = hist(x2)

# -------------------------------------------------
# 

install.packages('UsingR')
library('UsingR')
data(crime)
data(south)
data(aid)


crime_data = crime
south_data = south
aid_data = aid
boxplot(crime_data, main = 'crime data box plots', horizontal = TRUE)
boxplot(south_data,main = 'south_data box plot', horizontal = TRUE)
boxplot(aid_data,main = 'aid data box plot', horizontal = TRUE)

# crime and south data has two outliers and aid data has only one outlier
# crime data is symmetric
# south and aid data are positively skewed.
#----------------------------------------------------------------------------

# 
data("bumpers")
data("firstchi")
data('math')

mean_bumpers = mean(bumpers)
std_bumpers = sd(bumpers)
median_bumpers = median(bumpers)

mean_firstchi = mean(firstchi)
std_firstchi = sd(firstchi)
median_firstchi = median(firstchi)

mean_math = mean(math)
std_math = sd(math)
median_math = median(math)

#--------------------------------------------------------------------
# 

# data = 0 1 0 NA 0 0 0 0 0 1 1 1 0 0 3 0 0 0 0 0 2 0 1 
O_ring = scan()
table(O_ring)
mean_O_ring = mean(O_ring, na.rm = TRUE)
print(mean_O_ring)
#--------------------------------------------------------------------
# 
data("pi2000")
pi_data = pi2000
histo_pi_data = hist(pi_data,probability = TRUE)
table(pi_data)

#---------------------------------------------------------------------
# 
histo_pi_data = hist(pi_data,probability = TRUE)
lines(density(pi_data),col= 'blue')

#---------------------------------------------------------------------















