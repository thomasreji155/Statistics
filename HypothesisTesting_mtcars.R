

data("mtcars") 
# objective one : this is a one sample t test. 
# testing whether the mean mpg is 18  or more 
# Ho : mu  = 18 
# H1 : mu > 18 
t.test(mtcars$mpg, mu = 18,
       alternative = 'greater')
# -------------------------------------------------------------------------------------------------
# whether there is a significant difference in  horse power between  automatic and non-automatic cars
# Ho : mean horse power is same for both automatic and non-automatic cars.  
boxplot(mtcars$hp ~mtcars$am)
# so we can set var.eq = F. 
# here am representing the engine type ( automatic  = 0, manual = 1)
t.test(mtcars$hp ~ mtcars$am, mu = 0, alt = 'two.sided',
       conf = 0.95, var.eq = F, 
       paired = F)

#---------------------------------------------------------------------------------------------------------------------
# whether there is a significant difference in mpg value between 
# v shape engine cylinder and straight engine cylinder 
# vs representing the engine cylinder configuration
# Ho : mean mpg is same for v shape and straight engine cylinders
# H1 : mean mpg is different 
# so here we have two tailed test. 
boxplot(mtcars$mpg ~ mtcars$vs)

# so we can set var.eq = False;
t.test(mtcars$mpg ~ mtcars$vs, mu = 0, alt = 'two.sided',
       conf = 0.95, var.eq = F, 
       paired = F)

