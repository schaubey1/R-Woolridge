Dependencies:

  -Woolridge Dataset: http://fmwww.bc.edu/ec-p/data/wooldridge/datasets.list.html
  -R/RStudio

This R model answers the following:

1.
a. Find the average education level in the sample. What are the highest and lowest years
of education?
[1] "Mean of education sample: 12.5627376425856"
[1] "Highest years of education: 18"
[1] "Lowest years of education: 0"
b. Find the average hourly wage in the sample.
[1] "Average hourly wage in sample: 5.89610267478704

c. The wages are reported in 1976 dollars. Using the internet, find the calculate CPI (consumer price index) for the years
1976 and 2013.
CPI in 1976: 56.9 , CPI in 2013: 233.0.

d. Use the CPI data from part (c) to find the average hourly wage in 2013 dollars.
Using formula: Price x (2013 CPI/1976 CPI) . "In 2013 dollars, the mean wage
is equivalent to: 24.1439705312017"

e. How many women are in the sample? How many men?
Using the ?wage command I found there are 526 observations. Subtracting the amount
of women in the data from 526 will provide how many men.

2.
a. Find the average salary and IQ in this sample. What is the sample standard deviation of
IQ? (IQ scores are standardized so that the average in the population is 100 with a
standard deviation of 15.)

b. Estimate a simple regression model where a 1point increase in IQ changes wage by a
constant dollar amount. Use this model to find the predicted increase in wage for an
increase in IQ of 15 points. Does IQ explain most of the variation in wage?
"Our regression equation is: wages= 116.99 + 8.3 IQ"
Our estimated slope of 8.30 being positive implies that wages
increase by $8.30 for each 1 point increase in IQ score. Increasing
IQ score by 15 gives us 116.99 + 8.3(15)=241.49 Unrounded ($
241.537529409087). The IQ explains a variation of wage, as 15
points adds $124.5 alone to wage

c. Estimate a model where each one-point increase in IQ has the same percentage
effect (log) on wage. If IQ increases by 15 points, what is the approximate percentage
increase in predicted wage?
"Our new part C regression equation is: wages= 5.89 + 0.00881 IQ"
Using an IQ increase of 15 points, we get:
 wages= 5.89 + 0.00881(15)
wages= 5.89 + .132107336534506 = $6.091.
The proximate increase in wages is 13.2107336534506 %"
