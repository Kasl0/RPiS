# Rozkład empiryczny cechy
x <- sample(1:5, 10, replace = TRUE)
table(x) / length(x)

# Szereg rozdzielczy
lx <- sample(0:1000 / 1000, 100, replace = TRUE)
table(cut(lx, breaks = c(0, 0.1, 0.4, 0.6, 0.7, 1)))
table(cut(lx, breaks = 5))

# Rozkład cechy jakościowej
oceny <- c("ng", "ndp", "popr", "db", "bdb", "wz")
klasa <- sample(oceny, 10, replace = TRUE)
(kf <- factor(klasa, levels = oceny, ordered = TRUE))
table(kf)

# Średnia
mean(x)

# Mediana
sort(x)
median(x)

# Rozstęp próby
diff(range(x))

(x2 <- c(min(x), rep(median(x), times = 8), max(x)))

# Wariancja
var(x)

# Odchylenie standardowe
sd(x)

# Odchylenie przeciętne
avgdev <- function(x) mean(abs(x - mean(x)))
avgdev(x)

# Kwartyle
fx <- fivenum(x)
names(fx) <- c("Min", "Q1", "Median", "Q3", "Max")
fx

# Rozstęp międzykwartylowy
iqr2 <- function(x) diff(fivenum(x)[c(2, 4)])
iqr2(x)

# Kwantyle próby
quantile(x, c(0.25, 0.75))

# Histogram
hist(lx)
hist(lx, breaks = c(0, 0.1, 0.4, 0.6, 0.7, 1))
hist(lx, breaks = 0:20 / 20)

# Wykres ramkowy
boxplot(lx)

# Wykres skrzypcowy
vioplot::vioplot(lx)
