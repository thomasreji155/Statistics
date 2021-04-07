
# testing whether the
df = sales

#---------------------------------------------------------------------------------------------
# hypothesis 1 :
# Testign whethere is there any significant difference in sales with respect to 2003 and 2004
# we dont know whether the varinace are same or not so we need to do f test in order to check the equality of variance 


year2003 = df$SALES[df$YEAR_ID == 2003]
year2004 = df$SALES[df$YEAR_ID == 2004]

boxplot(year2003)
boxplot(year2004)

# lets check the equality of variance using F test  using 0.05 level of significance 
var.test(year2003, year2004)
# very high p value  so we accept the null hypothesis 
# we conclude that there is no signifiacne difference between the two vairance 


# Now lets do the t test for comparing the means where we can give true to var.equ 
t.test(x = year2003, y=year2004, mu = 0, alt = 'two.sided',
       conf = 0.95, var.eq = T, 
       paired = F)


# conclusion we get p almost equal to 1 so we accept the null hypothesis 


#--------------------------------------------------------------------------------------------------------
# hypotheis two 
# checking whethee there is any significant differnece in sales between usa and france

usa = df$SALES[df$COUNTRY == "USA"]
france = df$SALES[df$COUNTRY == "France"]

boxplot(usa)
boxplot(france)



# lets check the equality of variance using F test  using 0.05 level of significance 
var.test(usa, france)
# so here the p value is greater than the significance level 
# so we accept the hypothesis 

# Now lets do the t test for comparing the means where we can give true to var.equ 
t.test(x = usa, y=france, mu = 0, alt = 'two.sided',
       conf = 0.95, var.eq = T, 
       paired = F)

# p value greater than the alpha level so we accept the null hypothesis


#---------------------------------------------------------------------------------------
# hypotheis lets compare any difference in sales amount with respect to april and december
december = df$SALES[df$MONTH_ID==12 ]
april = df$SALES[df$MONTH_ID== 4]


hist(december)
hist(april)

# lets check the equality of variance using F test  using 0.05 level of significance 
var.test(december, april)
# so here the p value is lower than the significance level 
# so we reject the null hypothesis


# Now lets do the t test for comparing the means where we can give FALSE to var.equ 
t.test(x = december, y=april, mu = 0, alt = 'two.sided',
       conf = 0.95, var.eq = FALSE, 
       paired = F)
# we found that the p value is greater than the alpha level so we accept the hypothesis
# in this case eventhough the variance equlity test fails ,, the mean equality test wins... 








