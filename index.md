---
title       : Estimating miles per gallon
author      : Oabba Kanna
job         : Researcher
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## Shiny app overview
<ol>
<li> I have developed a shiny app as part of coursera course on developing data products.
<li> The app estimates miles per gallon for a vehicle based on its specs. </li>
<li> The app lets a user enter his vehicle's specs and the shiny server estimates the mpg.  </li>
<li> Estimation of mpg is based on the analysis of mtcars datasets and it is known that the mpg of a vehicle depends on the following specs 

<ul>
<li> Transmission type (manual or automatic)
<li> Vehicle's weight (lb/1000)
<li> Quarter mile time
</ul> 

</li>

</ol>

--- .class #id 

## Prediction model
1. Using the mtcars dataset, a prediction model was carefully designed using libraries for linear models. 
2. A vehicle's mpg was modeled as a linear multivariate function of vehicle's weight (lb/1000), transmission type and the vehicle's quarter mile time. 
3. The estimate of mpg learned through R libraries as follows


```r
#df.cars <- mtcars
fit <- lm(mpg~wt+qsec+factor(am), data=mtcars)
fit$coefficients
```

```
## (Intercept)          wt        qsec factor(am)1 
##    9.617781   -3.916504    1.225886    2.935837
```

4. We can write the mathematical function as follows.

$$mpg = 9.617781 - 3.916504wt + 1.225886qsec + 2.935837[transmission=Manual]$$


--- .class #id 

## Elements of the shiny app
<ol>
<li> The app has the following functionalities to get user input. 
<ul>
<li> A 2-choice select box that allows user choose a transmission type</li>
<li> A numberic input box that allows user enter vehicles' weight</li>
<li> Another numberic input box that allows user enter vehicles' quarter mile time</li>
<li> An action button labelled, <b>Estimate MPG</b> that when clicked, computes mpg based on entered specs. </li>
<li> Another action button labelled, <b>An example car of type selected</b> that when clicked, shows up an example car of the transmission type selected. </li>


</ul> </li>

<li> There is a documentation of shiny app, titled <b>User's help</b> </li>

</ol>


--- .class #id 

## Elements of the shiny app(2)

1. There are some reactive components which react when the user enters information. Under the heading of <b>Entered Car specifications</b>, the user's entered information is reactively displayed. 
2. When the user clicks action button <b>Estimate MPG</b> for the first time, the estimated mpg is shown. After it, the estimated mpg reactively changes if the user infromation is changed. 
3. When the user clicks action button <b>An example car of type selected</b> for the first time, an example vehicle with a label is shown. After it, the vehicle reactively changes if the user changes the transmission type. 


--- .class #id 
