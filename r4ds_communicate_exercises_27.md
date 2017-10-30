# Untitled
Long Nguyen  
10/30/2017  




## 27.2.1  
### 1   
### 2   
### 3   
Both can run R-script
R notebook cannot knit like R markdown
### 4   
I think the only different is file output and how the file is format, pdf have margin, html doesn't have the same margin

## 27.3.1  
### 1   

#### Long Nguyen
Long Nguyen 
caycham1@gmail.com  

##### Education  
 * California Institute of Technology
 * B.S. Mechanical Engineering

##### Work Experience  
  * Red Ventures Software Engineer
  * 2016-Present
  * Build CLI tool for Atom platform
  * Add logging functionality to track errors

### 2  
 [^1]: Here is the footnote.
***  
> block quote

### 3  

## 27.4.7  
### 1  

```r
knitr::kable(diamonds %>% 
  group_by(cut) %>% 
  summarise(avg_carat = mean(carat)))
```



cut          avg_carat
----------  ----------
Fair         1.0461366
Good         0.8491847
Very Good    0.8063814
Premium      0.8919549
Ideal        0.7028370

```r
knitr::kable(diamonds %>% 
  group_by(color) %>% 
  summarise(avg_carat = mean(carat)))
```



color    avg_carat
------  ----------
D        0.6577948
E        0.6578667
F        0.7365385
G        0.7711902
H        0.9117991
I        1.0269273
J        1.1621368

```r
knitr::kable(diamonds %>% 
  group_by(clarity) %>% 
  summarise(avg_carat = mean(carat)))
```



clarity    avg_carat
--------  ----------
I1         1.2838462
SI2        1.0776485
SI1        0.8504822
VS2        0.7639346
VS1        0.7271582
VVS2       0.5962021
VVS1       0.5033215
IF         0.5051229
### 2   

```r
knitr::kable(diamonds %>% 
  arrange(desc(carat)) %>% 
  top_n(20))
```

```
## Selecting by z
```



 carat  cut         color   clarity    depth   table   price       x       y       z
------  ----------  ------  --------  ------  ------  ------  ------  ------  ------
  5.01  Fair        J       I1          65.5    59.0   18018   10.74   10.54    6.98
  4.50  Fair        J       I1          65.8    58.0   18531   10.23   10.16    6.72
  4.13  Fair        H       I1          64.8    61.0   17329   10.00    9.85    6.43
  4.01  Premium     I       I1          61.0    61.0   15223   10.14   10.10    6.17
  4.01  Premium     J       I1          62.5    62.0   15223   10.02    9.94    6.24
  4.00  Very Good   I       I1          63.3    58.0   15984   10.01    9.94    6.31
  3.67  Premium     I       I1          62.4    56.0   16193    9.86    9.81    6.13
  3.65  Fair        H       I1          67.1    53.0   11668    9.53    9.48    6.38
  3.51  Premium     J       VS2         62.5    59.0   18701    9.66    9.63    6.03
  3.50  Ideal       H       I1          62.8    57.0   12587    9.65    9.59    6.03
  3.40  Fair        D       I1          66.8    52.0   15964    9.42    9.34    6.27
  3.22  Ideal       I       I1          62.6    55.0   12545    9.49    9.42    5.92
  3.11  Fair        J       I1          65.9    57.0    9823    9.15    9.02    5.98
  3.02  Fair        I       I1          65.2    56.0   10577    9.11    9.02    5.91
  3.01  Fair        I       SI2         65.8    56.0   18242    8.99    8.94    5.90
  3.01  Fair        I       SI2         65.8    56.0   18242    8.99    8.94    5.90
  3.00  Fair        H       I1          67.1    57.0    8044    8.93    8.84    5.97
  2.01  Fair        G       SI2         65.6    56.0   15562    7.89    7.84    6.16
  2.00  Premium     H       SI2         58.9    57.0   12210    8.09   58.90    8.06
  0.51  Very Good   E       VS1         61.8    54.7    1970    5.12    5.15   31.80

### 3  

```r
total <- diamonds %>%
  count()
bigger <- diamonds %>% 
  filter(carat >= 2.5) %>% 
  count()
pct <- bigger / total
paste(pct)
```

```
## [1] "0.00265109380793474"
```
