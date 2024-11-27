\name{anova_result}
\alias{anova_result}
\docType{data}
\title{
A Capitalized Title for the Data Set
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("anova_result")}
\format{
  The format is:
List of 13
 $ coefficients : Named num [1:3] 2.374 0.182 0.243
  ..- attr(*, "names")= chr [1:3] "(Intercept)" "surveytypeExit" "surveytypeAlumni"
 $ residuals    : Named num [1:262] 0.626 -0.374 -0.374 -0.374 -0.374 ...
  ..- attr(*, "names")= chr [1:262] "1" "2" "3" "4" ...
 $ effects      : Named num [1:262] -40.713 0.401 1.67 -0.37 -0.37 ...
  ..- attr(*, "names")= chr [1:262] "(Intercept)" "surveytypeExit" "surveytypeAlumni" "" ...
 $ rank         : int 3
 $ fitted.values: Named num [1:262] 2.37 2.37 2.37 2.37 2.37 ...
  ..- attr(*, "names")= chr [1:262] "1" "2" "3" "4" ...
 $ assign       : int [1:3] 0 1 1
 $ qr           :List of 5
  ..$ qr   : num [1:262, 1:3] -16.1864 0.0618 0.0618 0.0618 0.0618 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : chr [1:262] "1" "2" "3" "4" ...
  .. .. ..$ : chr [1:3] "(Intercept)" "surveytypeExit" "surveytypeAlumni"
  .. ..- attr(*, "assign")= int [1:3] 0 1 1
  .. ..- attr(*, "contrasts")=List of 1
  .. .. ..$ surveytype: chr "contr.treatment"
  ..$ qraux: num [1:3] 1.06 1.04 1.07
  ..$ pivot: int [1:3] 1 2 3
  ..$ tol  : num 1e-07
  ..$ rank : int 3
  ..- attr(*, "class")= chr "qr"
 $ df.residual  : int 259
 $ contrasts    :List of 1
  ..$ surveytype: chr "contr.treatment"
 $ xlevels      :List of 1
  ..$ surveytype: chr [1:3] "Baseline" "Exit" "Alumni"
 $ call         : language aov(formula = Score ~ surveytype, data = burnout_data)
 $ terms        :Classes 'terms', 'formula'  language Score ~ surveytype
  .. ..- attr(*, "variables")= language list(Score, surveytype)
  .. ..- attr(*, "factors")= int [1:2, 1] 0 1
  .. .. ..- attr(*, "dimnames")=List of 2
  .. .. .. ..$ : chr [1:2] "Score" "surveytype"
  .. .. .. ..$ : chr "surveytype"
  .. ..- attr(*, "term.labels")= chr "surveytype"
  .. ..- attr(*, "order")= int 1
  .. ..- attr(*, "intercept")= int 1
  .. ..- attr(*, "response")= int 1
  .. ..- attr(*, ".Environment")=<environment: R_GlobalEnv> 
  .. ..- attr(*, "predvars")= language list(Score, surveytype)
  .. ..- attr(*, "dataClasses")= Named chr [1:2] "numeric" "factor"
  .. .. ..- attr(*, "names")= chr [1:2] "Score" "surveytype"
 $ model        :'data.frame':	262 obs. of  2 variables:
  ..$ Score     : num [1:262] 3 2 2 2 2 1 2 2 3 2 ...
  ..$ surveytype: Factor w/ 3 levels "Baseline","Exit",..: 1 1 1 1 1 1 1 1 1 1 ...
  ..- attr(*, "terms")=Classes 'terms', 'formula'  language Score ~ surveytype
  .. .. ..- attr(*, "variables")= language list(Score, surveytype)
  .. .. ..- attr(*, "factors")= int [1:2, 1] 0 1
  .. .. .. ..- attr(*, "dimnames")=List of 2
  .. .. .. .. ..$ : chr [1:2] "Score" "surveytype"
  .. .. .. .. ..$ : chr "surveytype"
  .. .. ..- attr(*, "term.labels")= chr "surveytype"
  .. .. ..- attr(*, "order")= int 1
  .. .. ..- attr(*, "intercept")= int 1
  .. .. ..- attr(*, "response")= int 1
  .. .. ..- attr(*, ".Environment")=<environment: R_GlobalEnv> 
  .. .. ..- attr(*, "predvars")= language list(Score, surveytype)
  .. .. ..- attr(*, "dataClasses")= Named chr [1:2] "numeric" "factor"
  .. .. .. ..- attr(*, "names")= chr [1:2] "Score" "surveytype"
 - attr(*, "class")= chr [1:2] "aov" "lm"
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(anova_result)
## maybe str(anova_result) ; plot(anova_result) ...
}
\keyword{datasets}
