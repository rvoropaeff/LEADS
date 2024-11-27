\name{create_scatter_plot_all}
\alias{create_scatter_plot_all}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A Capitalized Title (ideally limited to 65 characters)
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
create_scatter_plot_all(x_question, y_question)
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
        select(SurveyId, UserId, Score) \%>\% rename(Score_x = Score)
    y_data <- ALL_data \%>\% filter(Question == y_question) \%>\% 
        select(SurveyId, UserId, Score) \%>\% rename(Score_y = Score)
    plot_data <- inner_join(x_data, y_data, by = c("SurveyId", 
        "UserId"))
    plot_data <- plot_data \%>\% filter(!is.na(Score_x) & !is.na(Score_y))
    plot_counts <- plot_data \%>\% group_by(Score_x, Score_y) \%>\% 
        summarise(Count = n(), .groups = "drop")
    plot_counts <- plot_counts \%>\% filter(Count > 0)
    n_x <- nrow(x_data)
    n_y <- nrow(y_data)
    plot <- ggplot(plot_counts, aes(x = Score_x, y = Score_y)) + 
        geom_point(aes(size = Count), alpha = 0.3) + geom_text(aes(label = Count), 
        hjust = -1, size = 3, color = "black") + labs(title = paste(x_question, 
        "vs", y_question, "| n_x =", n_x, ", n_y =", n_y), x = paste(x_question), 
        y = paste(y_question), size = "Count") + theme_minimal() + 
        theme(legend.position = "right", plot.title = element_text(hjust = 0.7))
    print(plot)
    ggsave(filename = paste0(x_question, "_vs_", y_question, 
        "_scatter_plot.png"), plot = plot)
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
