LEADS Bivariate Analysis - Mentorship
================
Rebecca Voropaeff
2024-10-08

<!-- insert LEADS logo -->

<img src="../../Pictures/Screenshots/Screenshot 2024-10-08 122720.png" style="display: block; margin: auto;" />

<!-- Load the data from the specified CSV file -->
<!-- assign factors -->
<!-- convert all columns within df to appropriate data types -->
<!-- assign specific order to surveytype -->
<!-- assign specific order to categories -->

This report observes the potential impact of mentorship on success
factors for LEADS scholars. The outcome Y variables of success factors
will be compared against the X variables *‘priaccess’* or *‘My primary
mentor of mentoring team is accessible’*, and *‘prioverall’* or *‘Please
rate the overall effectiveness of your primary mentor.’* The data is
unaggregated.

The LEADS survey has been broken down into subscales that will be
assessed in the tabs belows.

<!-- Load library for regression power analysis -->
<!-- Define a vector of specific question variables -->

## scatterplots

### Burnout

<center>
Burnout, shown on the y-axis, is measured on a Likert Scale of 1 to 5,
where 1 = None, 2 = Some Stress, 3 = Onset, 4 = Persistence, and 5 =
Severe. In this case, low scores indicate a positive result.
</center>
<!-- create function scatter plot two all -->

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-11-1.png" style="display: block; margin: auto;" />

### Creativity

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-12-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-13-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-14-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-15-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-16-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-17-1.png" style="display: block; margin: auto;" />

### Passion and Interests

<center>
Passion and Interest variables on the y-axis are measured on a Likert
Scale of 1 to 5, where 1 = Not at all, 2 = A little, 3 = Neutral, 4 = A
lot, 5 = Very Much.
</center>

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-18-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-19-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-20-1.png" style="display: block; margin: auto;" />

### Leadership

<center>
Leadership variables on the y-axis are measured on a Likert Scale of 1
to 7, where 1 = Seldom and 7 = Almost Always.
</center>

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-21-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-22-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-23-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-24-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-25-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-26-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-27-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-28-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-29-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-30-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-31-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-32-1.png" style="display: block; margin: auto;" />

### Research Skills Inventory

<center>
Research Skills Inventory variables on the y-axis are measured on a
Likert Scale of 0 to 10. Scholars were asked: Please indicate your
ability to successfully perform each task by selecting a single number
from 0 – 10 that best describes your level of confidence. We would like
to know how confident you are that you can successfully perform these
tasks TODAY where 0 = No confidence, 10 = Total confidence.
</center>

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-33-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-34-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-35-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-36-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-37-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-38-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-39-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-40-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-41-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-42-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-43-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-44-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-45-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-46-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-47-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-48-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-49-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-50-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-51-1.png" style="display: block; margin: auto;" />

### Professionalism

<center>
Professionalism variables on the y-axis are measured on a Likert Scale
of 1 to 5, where 1 = Never and 5 = A great deal.
</center>

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-52-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-53-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-54-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-55-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-56-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-57-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-58-1.png" style="display: block; margin: auto;" />

### Research Experience

<center>
Research experience, seen on the y-axis, is measured on a Likert Scale
of 0 to 5, where 0 = Has not changed at all, and 5 = Has changed a great
deal.
</center>

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-59-1.png" style="display: block; margin: auto;" />

### Networking/Social Capital

<center>
Networking and social capital variables on the y-axis are measured on a
Likert Scale of 0 to 10, where 0 = Not at all, 10 = Completely.
</center>

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-60-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-61-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-62-1.png" style="display: block; margin: auto;" />

### Job Satisfaction

<center>
Job satisfaction variables on the y-axis are measured on a Likert Scale
of 1 to 7, where 1 = Strongly disagree and 7 = Strongly agree.
</center>

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-63-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-64-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-65-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-66-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-67-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-68-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-69-1.png" style="display: block; margin: auto;" />

### Career Satisfaction

<center>
Career satisfaction variables on the y-axis are measured on a Likert
Scale of 1 to 5, where 1 = Not satisfied, 5 = Very satisfied.
</center>

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-70-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-71-1.png" style="display: block; margin: auto;" />

### Career Adapt-Abilities Inventory

<center>
Career Adat-Abilities Inventory variables on the y-axis are measured on
a Likert Scale of 1 to 5. Scholars were provided with the following
promt: Different people use different strength to build their careers.
No one is good at everything, each of us emphasizes some strengths more
than others. Please rate how strongly you have developed each of the
following abilities using the scale below where 1 = Not strong and 5 =
Strongest.
</center>

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-72-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-73-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-74-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-75-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-76-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-77-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-78-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-79-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-80-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-81-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-82-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-83-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-84-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-85-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-86-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-87-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-88-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-89-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-90-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-91-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-92-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-93-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-94-1.png" style="display: block; margin: auto;" />

<img src="LEADS_Bivariate_files/figure-gfm/unnamed-chunk-95-1.png" style="display: block; margin: auto;" />
