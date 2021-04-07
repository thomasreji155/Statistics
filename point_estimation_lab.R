library(MASS)
View(survey)

#  problem 1: finding the point estimation of heights 
height.survey = survey$Height
x_bar = mean(height.survey,na.rm = TRUE); x_bar


# problem2: finding the margin of error and inter estimation  at 95% ci
height.response = na.omit(survey$Height)
n = length(height.response)
sigma = 9.48
se = sigma/sqrt(n)
me = qnorm(.975)*se
x_bar +c(-me,me)

# problems3: without assuming the population sd of the student height in survey, find 
# the margin of error and interval estimate at 95% ci
height.response = na.omit(survey$Height)
n = length(height.response)
sd_height = sd(height.response)
se = sigma/sqrt(n)
me = qnorm(.975)*se
x_bar +c(-me,me)


# problem 4:
# assume that sigma for height is 9.48. find the sample size needed to achieve a 1.2 centimeters
# margin of error at 95% confidence level
zstar = qnorm(.975)
sigma = 9.48
E = 1.2
n = (zstar^2 * sigma^2) / E^2
print(n)

# problem 5:
# find a point estimate of the female student proportion from survey
gender.response = na.omit(survey$Sex)
n = length(gender.response)
k = sum(gender.response == 'Female')
pbar = k/n; pbar

# problem 6:
# compute the margin of error and estimate interval for the female students in the previous question
gender.response = na.omit(survey$Sex)
n = length(gender.response)
k = sum(gender.response == 'Female')
pbar = k/n
se = sqrt((pbar*(1-pbar))/n)
e = qnorm(.975) *se
pbar + c(-e,e)


# problem 7:
# using 50% planned proportion estimate , find the sample size needed to acheive 
# 5% margin of error for the female student survey at 95% ci
zstar = qnorm(.975)
p = 0.5
me = .05
n = ((zstar^2)* p*(1-p)) / me^2;n















######  age 

age_survey = na.omit(survey$Age)
x_bar = mean(age_survey)
num = length(age_survey)
sigma = 6.47
se = sigma/sqrt(num)
me = e = qnorm(.975)*sem
x_bar +c(-me,me)

#### pulse
pulse_survey = na.omit(survey$Pulse)
x_bar = mean(pulse_survey)
num = length(pulse_survey)
sigma = 11.68
se = sigma/sqrt(num)
me = qnorm(.975)*sem
x_bar +c(-me,me)



x_bar = 85
sigma = 8
n = 64
se = sigma /sqrt(num)
me = qnorm(.975)*se
print(' 95% ci for first question')
x_bar +c(-me,me)


####################
sd = 0.02
n = 50
x_bar = 0.995
se = sigma /sqrt(n)
me = qnorm(.975)*se
print(' 95 % ci for second question')
x_bar +c(-me,me)

#------------------------------------------------------
# t distribution

# margin_error =  qt(.975,df = n-1)*standard
# x_bar =c(-margin_error,margin_error)

age_survey = na.omit(survey$Age)
x_bar = mean(age_survey)
num = length(age_survey)
# sigma = 6.47
sigma = sd(age_survey)
se = sigma/sqrt(num)
me =qt(.975,df = num-1)*sem
x_bar +c(-me,me)

#### pulse
pulse_survey = na.omit(survey$Pulse)
x_bar = mean(pulse_survey)
num = length(pulse_survey)
# sigma = 11.68
sigma = sd(pulse_survey)
se = sigma/sqrt(num)
me =qt(.975,df = num-1)*sem
x_bar +c(-me,me)
#------------------------------------------------

# excel problem 
x_bar  = 1723.4
x_bar +c(-me,me)

# --------------------------------------------
# problem 1
xbar = 75
n = 36
sigma  = 24
se = sigma/sqrt(n)
me = qnorm(.975)*se
print('95 confidence intterval')
x_bar +c(-me,me)

# problem 2  ----------------
xbar = 50
n = 15
sigma  = 16
se = sigma/sqrt(n)
me = qnorm(.995)*se
print('99 confidence intterval')
xbar +c(-me,me)


# problem 3 ------------------------------
data1 = c(1,1,1,1,1,8,8,8,8)
data2 = c(2,1,2,3,4,5,6,7,8)
xbar1 = mean(data1)
xbar2 = mean(data2)
sigma1  = sd(data1)
sigma2 = sd(data2)
n = 9
se1 = sigma1/sqrt(n)
se2 = sigma2/sqrt(n)

me1 = qnorm(.975)*se1
me2 = qnorm(.975)*se2

print('95 confidence intterval for data1')
xbar1 +c(-me1,me1 )

print('95 confidence intterval for data1')
xbar2 +c(-me2,me2 )
xbar1
xbar2
sigma1
sigma2

































 

