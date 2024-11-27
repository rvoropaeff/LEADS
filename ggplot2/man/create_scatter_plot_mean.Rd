\name{create_scatter_plot_mean}
\alias{create_scatter_plot_mean}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A Capitalized Title (ideally limited to 65 characters)
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
create_scatter_plot_mean(x_question, y_question)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x_question}{
%%     ~~Describe \code{x_question} here~~
}
  \item{y_question}{
%%     ~~Describe \code{y_question} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or standard data sets, see data().

## The function is currently defined as
function (x_question, y_question) 
{
    if (!(x_question \%in\% ALL_data$Question)) 
        stop("X-axis question not found.")
    if (!(y_question \%in\% ALL_data$Question)) 
        stop("Y-axis question not found.")
    x_data <- ALL_data \%>\% filter(Question == x_question) \%>\% 
        select(SurveyId, UserId, surveytype, Score) \%>\% rename(Score_x = Score)
    y_data <- ALL_data \%>\% filter(Question == y_question) \%>\% 
        select(SurveyId, UserId, Score) \%>\% rename(Score_y = Score)
    plot_data <- inner_join(x_data, y_data, by = c("SurveyId", 
        "UserId"))
    plot_counts <- plot_data \%>\% group_by(surveytype, Score_y) \%>\% 
        summarise(Mean_x = mean(Score_x, na.rm = TRUE), Count = n(), 
            .groups = "drop")
    plot_counts <- plot_counts \%>\% filter(!is.na(Mean_x) & !is.na(Score_y))
    nudge_x <- 0.15
    nudge_y <- 0.1
    plot <- suppressWarnings({
        ggplot(plot_counts, aes(x = Mean_x, y = Score_y, color = surveytype)) + 
            geom_point(aes(size = Count), alpha = 0.5, position = position_nudge(x = nudge_x, 
                y = nudge_y), na.rm = TRUE) + labs(title = paste("Scatter Plot of", 
            x_question, "Mean vs", y_question, "Raw Scores by Survey Type"), 
            x = paste("Mean of", x_question), y = y_question, 
            size = "Count") + theme_minimal()
    })
    print(plot)
    suppressMessages({
        ggsave(filename = paste0(x_question, "_vs_", y_question, 
            "_scatter_plot_by_surveytype.png"), plot = plot)
    })
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
