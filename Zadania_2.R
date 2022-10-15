auto <- read.csv("Auto.csv", header = TRUE, na.strings = "?")
attach(auto)

# 1
mean(mpg)

# 2
mean(mpg[cylinders == 4])

# 3
median(weight)

# 4
mean(mpg[year == 72])

# 5
var(acceleration)

# 6
var(acceleration[origin == 3])

# 7
x <- na.omit(auto$horsepower)
sum(x > mean(x))

# 8
max(na.omit(horsepower[weight < mean(weight)]))

# 9
sum(mpg > mean(mpg))

# 10
min(cylinders[mpg > mean(mpg)])

# 11
sum(displacement == max(displacement))

# 12
max(weight[displacement < median(displacement)])