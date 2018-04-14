Codebook for Tidy

# Data report overview
The dataset has the following dimensions:


---------------------------------
Feature                    Result
------------------------ --------
Number of observations      11880

Number of variables            11
---------------------------------




# Codebook summary table

-----------------------------------------------------------------------------
Label   Variable                 Class       # unique  Missing  Description  
                                               values                        
------- ------------------------ --------- ---------- --------- -------------
        **[subject]**            integer           30  0.00 %                

        **[activity]**           factor             6  0.00 %                

        **[featDomain]**         factor             2  0.00 %                

        **[featAcceleration]**   factor             3  0.00 %                

        **[featInstrument]**     factor             2  0.00 %                

        **[featJerk]**           factor             2  0.00 %                

        **[featMagnitude]**      factor             2  0.00 %                

        **[featVariable]**       factor             2  0.00 %                

        **[featAxis]**           factor             4  0.00 %                

        **[count]**              integer           45  0.00 %                

        **[average]**            numeric        11520  0.00 %                
-----------------------------------------------------------------------------




# Variable list
## subject

<div class = "row">
<div class = "col-lg-8">

-----------------------------------
Feature                      Result
------------------------- ---------
Variable type               integer

Number of missing obs.      0 (0 %)

Number of unique values          30

Median                         15.5

1st and 3rd quartiles         8; 23

Min. and max.                 1; 30
-----------------------------------


</div>
<div class = "col-lg-4">
```{r Var-1-subject, echo=FALSE, fig.width=4, fig.height=3, message=FALSE, warning=FALSE}
ggAggHist(data = structure(list(factorV = structure(1:20, .Label = c("[1,2.45]", 
"(2.45,3.9]", "(3.9,5.35]", "(5.35,6.8]", "(6.8,8.25]", "(8.25,9.7]", 
"(9.7,11.2]", "(11.2,12.6]", "(12.6,14]", "(14,15.5]", "(15.5,16.9]", 
"(16.9,18.4]", "(18.4,19.8]", "(19.8,21.3]", "(21.3,22.8]", "(22.8,24.2]", 
"(24.2,25.6]", "(25.6,27.1]", "(27.1,28.6]", "(28.6,30]"), class = "factor"), 
    Freq = c(792L, 396L, 792L, 396L, 792L, 396L, 792L, 396L, 
    792L, 396L, 396L, 792L, 396L, 792L, 396L, 792L, 396L, 792L, 
    396L, 792L), xmin = c(1, 2.45, 3.9, 5.35, 6.8, 8.25, 9.7, 
    11.15, 12.6, 14.05, 15.5, 16.95, 18.4, 19.85, 21.3, 22.75, 
    24.2, 25.65, 27.1, 28.55), xmax = c(2.45, 3.9, 5.35, 6.8, 
    8.25, 9.7, 11.15, 12.6, 14.05, 15.5, 16.95, 18.4, 19.85, 
    21.3, 22.75, 24.2, 25.65, 27.1, 28.55, 30), ymin = c(0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), ymax = c(792L, 
    396L, 792L, 396L, 792L, 396L, 792L, 396L, 792L, 396L, 396L, 
    792L, 396L, 792L, 396L, 792L, 396L, 792L, 396L, 792L)), .Names = c("factorV", 
"Freq", "xmin", "xmax", "ymin", "ymax"), row.names = c(NA, -20L
), class = "data.frame"), vnam = "subject")
```
</div>
</div>




---

## activity

<div class = "row">
<div class = "col-lg-8">

------------------------------------
Feature                       Result
------------------------- ----------
Variable type                 factor

Number of missing obs.       0 (0 %)

Number of unique values            6

Mode                        "LAYING"
------------------------------------


</div>
<div class = "col-lg-4">
```{r Var-2-activity, echo=FALSE, fig.width=4, fig.height=3, message=FALSE, warning=FALSE}
ggAggBarplot(data = structure(list(x = structure(1:6, .Label = c("LAYING", 
"SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"
), class = "factor"), y = c(1980L, 1980L, 1980L, 1980L, 1980L, 
1980L)), .Names = c("x", "y"), row.names = c(NA, -6L), class = "data.frame"), 
    vnam = "activity")
```
</div>
</div>


- Observed factor levels: \"LAYING\", \"SITTING\", \"STANDING\", \"WALKING\", \"WALKING_DOWNSTAIRS\", \"WALKING_UPSTAIRS\". 



---

## featDomain

<div class = "row">
<div class = "col-lg-8">

-----------------------------------
Feature                      Result
------------------------- ---------
Variable type                factor

Number of missing obs.      0 (0 %)

Number of unique values           2

Mode                         "Time"
-----------------------------------


</div>
<div class = "col-lg-4">
```{r Var-3-featDomain, echo=FALSE, fig.width=4, fig.height=3, message=FALSE, warning=FALSE}
ggAggBarplot(data = structure(list(x = structure(1:2, .Label = c("Freq", 
"Time"), class = "factor"), y = c(4680L, 7200L)), .Names = c("x", 
"y"), row.names = c(NA, -2L), class = "data.frame"), vnam = "featDomain")
```
</div>
</div>


- Observed factor levels: \"Freq\", \"Time\". 



---

## featAcceleration

<div class = "row">
<div class = "col-lg-8">

-----------------------------------
Feature                      Result
------------------------- ---------
Variable type                factor

Number of missing obs.      0 (0 %)

Number of unique values           3

Mode                         "Body"
-----------------------------------


</div>
<div class = "col-lg-4">
```{r Var-4-featAcceleration, echo=FALSE, fig.width=4, fig.height=3, message=FALSE, warning=FALSE}
ggAggBarplot(data = structure(list(x = structure(1:2, .Label = c("Body", 
"Gravity"), class = "factor"), y = c(5760L, 1440L)), .Names = c("x", 
"y"), row.names = c(NA, -2L), class = "data.frame"), vnam = "featAcceleration")
```
</div>
</div>


- Observed factor levels: \"Body\", \"Gravity\", \"NA\". 



---

## featInstrument

<div class = "row">
<div class = "col-lg-8">

-------------------------------------------
Feature                              Result
------------------------- -----------------
Variable type                        factor

Number of missing obs.              0 (0 %)

Number of unique values                   2

Mode                        "Accelerometer"
-------------------------------------------


</div>
<div class = "col-lg-4">
```{r Var-5-featInstrument, echo=FALSE, fig.width=4, fig.height=3, message=FALSE, warning=FALSE}
ggAggBarplot(data = structure(list(x = structure(1:2, .Label = c("Accelerometer", 
"Gyroscope"), class = "factor"), y = c(7200L, 4680L)), .Names = c("x", 
"y"), row.names = c(NA, -2L), class = "data.frame"), vnam = "featInstrument")
```
</div>
</div>


- Observed factor levels: \"Accelerometer\", \"Gyroscope\". 



---

## featJerk

<div class = "row">
<div class = "col-lg-8">

-----------------------------------
Feature                      Result
------------------------- ---------
Variable type                factor

Number of missing obs.      0 (0 %)

Number of unique values           2

Mode                           "NA"
-----------------------------------


</div>
<div class = "col-lg-4">
```{r Var-6-featJerk, echo=FALSE, fig.width=4, fig.height=3, message=FALSE, warning=FALSE}
ggAggBarplot(data = structure(list(x = structure(1L, .Label = "Jerk", class = "factor"), 
    y = 4680L), .Names = c("x", "y"), row.names = c(NA, -1L), class = "data.frame"), 
    vnam = "featJerk")
```
</div>
</div>


- Observed factor levels: \"Jerk\", \"NA\". 



---

## featMagnitude

<div class = "row">
<div class = "col-lg-8">

-----------------------------------
Feature                      Result
------------------------- ---------
Variable type                factor

Number of missing obs.      0 (0 %)

Number of unique values           2

Mode                           "NA"
-----------------------------------


</div>
<div class = "col-lg-4">
```{r Var-7-featMagnitude, echo=FALSE, fig.width=4, fig.height=3, message=FALSE, warning=FALSE}
ggAggBarplot(data = structure(list(x = structure(1L, .Label = "Magnitude", class = "factor"), 
    y = 3240L), .Names = c("x", "y"), row.names = c(NA, -1L), class = "data.frame"), 
    vnam = "featMagnitude")
```
</div>
</div>


- Observed factor levels: \"Magnitude\", \"NA\". 



---

## featVariable

<div class = "row">
<div class = "col-lg-8">

-----------------------------------
Feature                      Result
------------------------- ---------
Variable type                factor

Number of missing obs.      0 (0 %)

Number of unique values           2

Mode                         "Mean"
-----------------------------------


</div>
<div class = "col-lg-4">
```{r Var-8-featVariable, echo=FALSE, fig.width=4, fig.height=3, message=FALSE, warning=FALSE}
ggAggBarplot(data = structure(list(x = structure(1:2, .Label = c("Mean", 
"SD"), class = "factor"), y = c(5940L, 5940L)), .Names = c("x", 
"y"), row.names = c(NA, -2L), class = "data.frame"), vnam = "featVariable")
```
</div>
</div>


- Observed factor levels: \"Mean\", \"SD\". 



---

## featAxis

<div class = "row">
<div class = "col-lg-8">

-----------------------------------
Feature                      Result
------------------------- ---------
Variable type                factor

Number of missing obs.      0 (0 %)

Number of unique values           4

Mode                           "NA"
-----------------------------------


</div>
<div class = "col-lg-4">
```{r Var-9-featAxis, echo=FALSE, fig.width=4, fig.height=3, message=FALSE, warning=FALSE}
ggAggBarplot(data = structure(list(x = structure(1:3, .Label = c("X", 
"Y", "Z"), class = "factor"), y = c(2880L, 2880L, 2880L)), .Names = c("x", 
"y"), row.names = c(NA, -3L), class = "data.frame"), vnam = "featAxis")
```
</div>
</div>


- Observed factor levels: \"X\", \"Y\", \"Z\", \"NA\". 



---

## count

<div class = "row">
<div class = "col-lg-8">

-------------------------------------
Feature                        Result
------------------------- -----------
Variable type                 integer

Number of missing obs.        0 (0 %)

Number of unique values            45

Median                           54.5

1st and 3rd quartiles       49; 63.25

Min. and max.                  36; 95
-------------------------------------


</div>
<div class = "col-lg-4">
```{r Var-10-count, echo=FALSE, fig.width=4, fig.height=3, message=FALSE, warning=FALSE}
ggAggHist(data = structure(list(factorV = structure(1:20, .Label = c("[36,39]", 
"(39,41.9]", "(41.9,44.9]", "(44.9,47.8]", "(47.8,50.8]", "(50.8,53.7]", 
"(53.7,56.7]", "(56.7,59.6]", "(59.6,62.5]", "(62.5,65.5]", "(65.5,68.5]", 
"(68.5,71.4]", "(71.4,74.3]", "(74.3,77.3]", "(77.3,80.2]", "(80.2,83.2]", 
"(83.2,86.2]", "(86.2,89.1]", "(89.1,92.1]", "(92.1,95]"), class = "factor"), 
    Freq = c(198L, 198L, 396L, 1452L, 1254L, 1716L, 1320L, 1518L, 
    792L, 528L, 330L, 462L, 924L, 66L, 396L, 66L, 66L, 66L, 66L, 
    66L), xmin = c(36, 38.95, 41.9, 44.85, 47.8, 50.75, 53.7, 
    56.65, 59.6, 62.55, 65.5, 68.45, 71.4, 74.35, 77.3, 80.25, 
    83.2, 86.15, 89.1, 92.05), xmax = c(38.95, 41.9, 44.85, 47.8, 
    50.75, 53.7, 56.65, 59.6, 62.55, 65.5, 68.45, 71.4, 74.35, 
    77.3, 80.25, 83.2, 86.15, 89.1, 92.05, 95), ymin = c(0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), ymax = c(198L, 
    198L, 396L, 1452L, 1254L, 1716L, 1320L, 1518L, 792L, 528L, 
    330L, 462L, 924L, 66L, 396L, 66L, 66L, 66L, 66L, 66L)), .Names = c("factorV", 
"Freq", "xmin", "xmax", "ymin", "ymax"), row.names = c(NA, -20L
), class = "data.frame"), vnam = "count")
```
</div>
</div>




---

## average

<div class = "row">
<div class = "col-lg-8">

----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values            11520

Median                             -0.47

1st and 3rd quartiles       -0.96; -0.08

Min. and max.                   -1; 0.97
----------------------------------------


</div>
<div class = "col-lg-4">
```{r Var-11-average, echo=FALSE, fig.width=4, fig.height=3, message=FALSE, warning=FALSE}
ggAggHist(data = structure(list(factorV = structure(1:20, .Label = c("[-0.998,-0.899]", 
"(-0.899,-0.8]", "(-0.8,-0.702]", "(-0.702,-0.603]", "(-0.603,-0.505]", 
"(-0.505,-0.406]", "(-0.406,-0.307]", "(-0.307,-0.209]", "(-0.209,-0.11]", 
"(-0.11,-0.0116]", "(-0.0116,0.087]", "(0.087,0.186]", "(0.186,0.284]", 
"(0.284,0.383]", "(0.383,0.481]", "(0.481,0.58]", "(0.58,0.679]", 
"(0.679,0.777]", "(0.777,0.876]", "(0.876,0.975]"), class = "factor"), 
    Freq = c(4702L, 161L, 120L, 260L, 461L, 642L, 755L, 646L, 
    687L, 1601L, 884L, 353L, 283L, 82L, 28L, 16L, 20L, 15L, 35L, 
    129L), xmin = c(-0.997666071594203, -0.899057331414493, -0.800448591234783, 
    -0.701839851055072, -0.603231110875362, -0.504622370695652, 
    -0.406013630515942, -0.307404890336232, -0.208796150156522, 
    -0.110187409976812, -0.0115786697971013, 0.0870300703826089, 
    0.185638810562319, 0.284247550742029, 0.382856290921739, 
    0.481465031101449, 0.58007377128116, 0.67868251146087, 0.77729125164058, 
    0.87589999182029), xmax = c(-0.899057331414493, -0.800448591234783, 
    -0.701839851055072, -0.603231110875362, -0.504622370695652, 
    -0.406013630515942, -0.307404890336232, -0.208796150156522, 
    -0.110187409976812, -0.0115786697971013, 0.0870300703826089, 
    0.185638810562319, 0.284247550742029, 0.382856290921739, 
    0.481465031101449, 0.58007377128116, 0.67868251146087, 0.77729125164058, 
    0.87589999182029, 0.974508732), ymin = c(0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), ymax = c(4702L, 
    161L, 120L, 260L, 461L, 642L, 755L, 646L, 687L, 1601L, 884L, 
    353L, 283L, 82L, 28L, 16L, 20L, 15L, 35L, 129L)), .Names = c("factorV", 
"Freq", "xmin", "xmax", "ymin", "ymax"), row.names = c(NA, -20L
), class = "data.frame"), vnam = "average")
```
</div>
</div>




---



Report generation information:

 *  Created by Zoe Koppenhofer.

 *  Report creation time: Tue Apr 10 2018 14:30:51

 *  dataMaid v1.1.0 [Pkg: 2018-02-06 from CRAN (R 3.4.3)]

 *  R version 3.4.3 (2017-11-30).

 *  Platform: x86_64-apple-darwin15.6.0 (64-bit)(macOS Sierra 10.12.6).

 *  Function call: `makeDataReport(data = data, mode = c("summarize", "visualize", 
    "check"), smartNum = FALSE, file = normalizeFileName(paste0("codebook_", 
    dfname, vol, ".Rmd")), checks = setChecks(character = list("showAllFactorLevels"), 
    factor = list("showAllFactorLevels"), labelled = list("showAllFactorLevels"), 
    numeric = NULL, integer = NULL, Date = NULL, logical = NULL), 
    listChecks = FALSE, maxProbVals = Inf, codebook = TRUE, reportTitle = paste0("Codebook for ", 
        dfname))`

