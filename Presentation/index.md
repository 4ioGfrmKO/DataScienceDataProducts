---
title       : A shiny app to visually explore the mtcars dataset
subtitle    : My Reproducible Pitch Presentation
author      : 4ioGfrmKO
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
#mode        : selfcontained # {standalone, draft}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Exploring the mtcars dataset with regard to fuel consumption

1. The mtcars dataset gives insights into cars from 1973/1974
2. The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance
3. We have created a shiny app the let's you explore the dataset


```
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```


--- .class #id 

## We can create plots like this...

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png) 


---

## ... with a simple shiny app

![Screenshot of the shiy app](./assets/img/Screenshot.png)

---

## Slide 5

1. You can try it out yourself!
2. Goto http://awiloylf.shinyapps.io/DataScienceDataProducts1/


