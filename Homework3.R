#R script for Exercise 3 - Geography 411
#Gianna Hy
#geo411 Homework 3
#Test the hypothesis that there is an association between life expectancy and per capita gross domestic product for the countries of the world
#Read the data file <3>
setwd("C:/Users/ash42/OneDrive/geo411/hw3")
wdt <- read.csv("WorldDataTable.csv")
wdt[1:10,]
head(wdt, 10)
#Histograms <4>
hist(wdt$LifeExpectancy)
hist(wdt$GDPPerCapita)
plot(wdt$GDPPerCapita,wdt$LifeExpectancy)
r <- cor(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "pearson")
r
n <- length(wdt$GDPPerCapita)
t <- (r * sqrt(n-2)) / sqrt(1 - r^2)
tcrit <- qt(p = 0.025, df = n-2, lower.tail = TRUE)
cor.test(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "pearson")
rs <- cor(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "spearman")
rs
ts <- rs * sqrt(n-1)
tcrits <- qt(p = 0.025, df = n-1, lower.tail = TRUE)
cor.test(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "spearman")
plot(wdt$GDPPerCapita,wdt$LifeExpectancy, col = "white")
text(wdt$GDPPerCapita,wdt$LifeExpectancy, labels = wdt$Country, cex = 0.5)



> wdt <- read.csv("WorldDataTable.csv")
> wdt[1:10,]
             Country GDPPerCapita LifeExpectancy
1            Albania        20940           79.6
2            Algeria        15960           76.3
3          Argentina        26930           77.4
4          Australia        59440           83.1
5  Brunei Darussalam        79540           75.3
6         Cabo Verde         8900           76.1
7           Cambodia         6500           70.7
8              Chile        27880           81.2
9           Colombia        18390           77.7
10     Cote d'Ivoire         6300           61.9
> head(wdt, 10)
             Country GDPPerCapita LifeExpectancy
1            Albania        20940           79.6
2            Algeria        15960           76.3
3          Argentina        26930           77.4
4          Australia        59440           83.1
5  Brunei Darussalam        79540           75.3
6         Cabo Verde         8900           76.1
7           Cambodia         6500           70.7
8              Chile        27880           81.2
9           Colombia        18390           77.7
10     Cote d'Ivoire         6300           61.9
> #Histograms <4>
> hist(wdt$LifeExpectancy)
> hist(wdt$GDPPerCapita)
> plot(wdt$GDPPerCapita,wdt$LifeExpectancy)
> r <- cor(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "pearson")
> r
[1] 0.7249481
> 
> n <- length(wdt$GDPPerCapita)
> 
> t <- (r * sqrt(n-2)) / sqrt(1 - r^2) 
> 
> tcrit <- qt(p = 0.025, df = n-2, lower.tail = TRUE)
> 
> cor.test(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "pearson")

	Pearson's product-moment correlation

data:  wdt$GDPPerCapita and wdt$LifeExpectancy
t = 7.0602, df = 45, p-value = 8.297e-09
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.5528805 0.8377179
sample estimates:
      cor 
0.7249481 

> rs <- cor(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "spearman")
> rs
[1] 0.8197404
> 
> ts <- rs * sqrt(n-1) 
> 
> tcrits <- qt(p = 0.025, df = n-1, lower.tail = TRUE)
> 
> cor.test(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "spearman")

	Spearman's rank correlation rho

data:  wdt$GDPPerCapita and wdt$LifeExpectancy
S = 3117.8, p-value = 1.831e-12
alternative hypothesis: true rho is not equal to 0
sample estimates:
      rho 
0.8197404 

