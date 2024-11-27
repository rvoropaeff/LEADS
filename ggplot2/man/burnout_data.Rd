\name{burnout_data}
\alias{burnout_data}
\docType{data}
\title{
A Capitalized Title for the Data Set
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("burnout_data")}
\format{
  A data frame with 262 observations on the following 8 variables.
  \describe{
    \item{\code{SurveyId}}{a factor with levels \code{3272} \code{3273} \code{3274} \code{3275} \code{3276} \code{3277} \code{3278} \code{3279} \code{3280} \code{3281} \code{3282} \code{3283} \code{3284} \code{3884} \code{3885} \code{3886} \code{3887} \code{3888} \code{3889} \code{3890} \code{3891} \code{3892} \code{3893} \code{3894} \code{3895} \code{3896} \code{3898} \code{3899} \code{3916} \code{3917} \code{3918} \code{3920} \code{3924} \code{3926} \code{3936} \code{3938} \code{3939} \code{3940} \code{3941} \code{3942} \code{3943} \code{3944} \code{3945} \code{3946} \code{3947} \code{3948} \code{3949} \code{3950} \code{4291} \code{4292} \code{4295} \code{4296} \code{4297} \code{4298} \code{4299} \code{4300} \code{4301} \code{4302} \code{4327} \code{4328} \code{4329} \code{4330} \code{4331} \code{4332} \code{4333} \code{4334} \code{4335} \code{4336} \code{4337} \code{4338} \code{4339} \code{4340} \code{4341} \code{4360} \code{4395} \code{5007} \code{5008} \code{5010} \code{5011} \code{5012} \code{5013} \code{5014} \code{5016} \code{5017} \code{5018} \code{5019} \code{5020} \code{5021} \code{5022} \code{5024} \code{5025} \code{5026} \code{5027} \code{5028} \code{5029} \code{5030} \code{5031} \code{5032} \code{5203} \code{5204} \code{5205} \code{5206} \code{5207} \code{5208} \code{5209} \code{5210} \code{5211} \code{5212} \code{5213} \code{5214} \code{5215} \code{5216} \code{5217} \code{5218} \code{5219} \code{5220} \code{5221} \code{5222} \code{5223} \code{5224} \code{5225} \code{5226} \code{5227} \code{5228} \code{5229} \code{5230} \code{5231} \code{5232} \code{5233} \code{5739} \code{5740} \code{5741} \code{5742} \code{5743} \code{5744} \code{5745} \code{5746} \code{5747} \code{5748} \code{5749} \code{5750} \code{5751} \code{5752} \code{5753} \code{5757} \code{5758} \code{5759} \code{5760} \code{5761} \code{5762} \code{5763} \code{5764} \code{5765} \code{5766} \code{5767} \code{5768} \code{5770} \code{5771} \code{5773} \code{5774} \code{5775} \code{5777} \code{5778} \code{5779} \code{5780} \code{5783} \code{5785} \code{5786} \code{5787} \code{5789} \code{5791} \code{5792} \code{5794} \code{5795} \code{5796} \code{5797} \code{5800} \code{5801} \code{5802} \code{5803} \code{5805} \code{5806} \code{5807} \code{5816} \code{5843} \code{6362} \code{6363} \code{6364} \code{6365} \code{6366} \code{6367} \code{6368} \code{6369} \code{6370} \code{6371} \code{6372} \code{6373} \code{6374} \code{6375} \code{6376} \code{6377} \code{6378} \code{6379} \code{6380} \code{6381} \code{6382} \code{6383} \code{6384} \code{6385} \code{6386} \code{6387} \code{6388} \code{6389} \code{6390} \code{6391} \code{6392} \code{6393} \code{6394} \code{6395} \code{6396} \code{6397} \code{6398} \code{6399} \code{6400} \code{6401} \code{6402} \code{6403} \code{6404} \code{6405} \code{6406} \code{6407} \code{6408} \code{6409} \code{6410} \code{6411} \code{6412} \code{6413} \code{6435} \code{6436} \code{6437} \code{6438} \code{6439} \code{6440} \code{6441} \code{6442} \code{6443} \code{6444} \code{6445} \code{6446} \code{6447} \code{6448} \code{7129} \code{7130} \code{7131} \code{7132} \code{7133} \code{7134} \code{7135} \code{7136} \code{7137} \code{7168} \code{7169} \code{7170} \code{7171} \code{7172} \code{7173} \code{7174} \code{7175} \code{7176} \code{7177} \code{7178} \code{7179} \code{7180} \code{7181} \code{7182} \code{7183} \code{7184} \code{7185} \code{7186} \code{7187} \code{7188} \code{7189} \code{7190} \code{7191} \code{7192} \code{7193} \code{7194} \code{7195} \code{7196} \code{7197} \code{7198} \code{7199} \code{7200} \code{7201} \code{7202} \code{7203} \code{7204} \code{7205} \code{7206} \code{7207} \code{7208} \code{7209} \code{7210} \code{7211} \code{7212} \code{7213} \code{7214} \code{7215} \code{7216} \code{7217} \code{7218} \code{7259} \code{7260} \code{7261} \code{7262} \code{7263} \code{7264} \code{7265} \code{7266} \code{7267} \code{7268} \code{7269} \code{7270} \code{7271} \code{8848} \code{8849} \code{8850} \code{8851} \code{8852} \code{8853} \code{8854} \code{8855} \code{8856} \code{9308} \code{9309} \code{9310} \code{9311} \code{9314} \code{9315} \code{9316} \code{9317} \code{9319}}
    \item{\code{UserId}}{a factor with levels \code{231} \code{518} \code{3518} \code{3858} \code{3865} \code{3868} \code{3870} \code{3874} \code{3877} \code{3899} \code{3901} \code{3919} \code{3939} \code{3954} \code{3964} \code{3965} \code{3966} \code{3969} \code{3974} \code{3976} \code{3979} \code{3985} \code{3998} \code{4027} \code{4093} \code{4218} \code{4220} \code{4265} \code{4299} \code{4312} \code{4330} \code{4336} \code{4341} \code{4342} \code{4345} \code{4346} \code{4353} \code{4612} \code{4617} \code{4627} \code{4632} \code{4634} \code{4641} \code{4648} \code{4651} \code{4652} \code{4653} \code{4654} \code{4658} \code{4662} \code{4664} \code{4667} \code{4674} \code{4895} \code{4901} \code{4928} \code{4929} \code{4944} \code{4948} \code{4951} \code{4955} \code{4956} \code{4957} \code{4962} \code{4966} \code{4971} \code{4972} \code{4977} \code{5203} \code{5215} \code{5217} \code{5228} \code{5237} \code{5239} \code{5248} \code{5251} \code{5252} \code{5258} \code{5268} \code{5278} \code{5279} \code{5284} \code{5285} \code{5294} \code{5707} \code{5738} \code{5766} \code{5771} \code{5793} \code{5795} \code{5810} \code{5811} \code{6485} \code{6489} \code{6490} \code{6525} \code{6547} \code{6553} \code{6563} \code{6573}}
    \item{\code{Cohort}}{a factor with levels \code{Cohort 1} \code{Cohort 2} \code{Cohort 3} \code{Cohort 4} \code{Cohort 5} \code{Cohort 7} \code{Cohort 9}}
    \item{\code{SurveyYear}}{a numeric vector}
    \item{\code{surveytype}}{a factor with levels \code{Baseline} \code{Exit} \code{Alumni}}
    \item{\code{Question}}{a character vector}
    \item{\code{Score}}{a numeric vector}
    \item{\code{Category}}{a factor with levels \code{burnout} \code{creativity} \code{motivation} \code{passion_and_interest} \code{leadership} \code{rsi} \code{professionalism} \code{research_experience} \code{mentoring} \code{resources} \code{networking} \code{job_satisfaction} \code{career_satisfaction} \code{caa}}
  }
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
data(burnout_data)
## maybe str(burnout_data) ; plot(burnout_data) ...
}
\keyword{datasets}
