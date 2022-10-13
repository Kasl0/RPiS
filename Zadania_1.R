# 1
mean(precip)
median(precip)

# 2
var(precip)
sd(precip)

# 3
diff(range(precip))

# 4
diff(unname(fivenum(precip))[c(2, 4)])
IQR(precip)

# 5
mean(abs(precip - mean(precip)))
mean(abs(precip - median(precip)))

# 6
precip[startsWith(names(precip), "M")]

# 7
precip[precip == mean(precip)]

# 8
names(precip[median(precip) - 0.5 < precip & precip < median(precip) + 0.5])

# 9
precip[precip == min(precip)]
precip[precip == max(precip)]

# 10
length(precip[precip > mean(precip)])

# 11
names(precip[precip > fivenum(precip)[4]])

# 12
names(precip[precip < fivenum(precip)[2]])

# 13
hist(precip, main = "Histogram rozkładu", xlab = "Opad", ylab = "Liczba miast")
# Wnioski: Sporo miast z opadami pomiędzy 30 a 50

# 14
boxplot(precip)
# Wnioski: Mediana nie jest po środku boxplot'a. Występują wartości odstające.
# Miasta: Phoenix, Reno, Albuquerque, El Paso, Mobile
