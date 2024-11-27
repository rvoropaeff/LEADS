\name{create_scatter_plot_both}
\alias{create_scatter_plot_both}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A Capitalized Title (ideally limited to 65 characters)
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
create_scatter_plot_both(x_question, y_question, title_size = 14, axis_size = 12, legend_size = 10)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x_question}{
%%     ~~Describe \code{x_question} here~~
}
  \item{y_question}{
%%     ~~Describe \code{y_question} here~~
}
  \item{title_size}{
%%     ~~Describe \code{title_size} here~~
}
  \item{axis_size}{
%%     ~~Describe \code{axis_size} here~~
}
  \item{legend_size}{
%%     ~~Describe \code{legend_size} here~~
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
function (x_question, y_question, title_size = 14, axis_size = 12, 
    legend_size = 10) 
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
    plot_data <- plot_data \%>\% filter(!is.na(Score_x) & !is.na(Score_y))
    plot_counts_surveytype <- plot_data \%>\% group_by(surveytype, 
        Score_x, Score_y) \%>\% summarise(Count = n(), .groups = "drop")
    plot_counts_all <- plot_data \%>\% group_by(Score_x, Score_y) \%>\% 
        summarise(Count = n(), .groups = "drop")
    plot_counts_surveytype <- plot_counts_surveytype \%>\% filter(Count > 
        0)
    plot_counts_all <- plot_counts_all \%>\% filter(Count > 0)
    plot1 <- ggplot(plot_counts_surveytype, aes(x = Score_x, 
        y = Score_y)) + geom_jitter(aes(size = Count, color = surveytype), 
        width = 0.3, height = 0.3, alpha = 0.3, na.rm = TRUE) + 
        labs(title = paste(x_question, "vs", y_question), x = x_question, 
            y = y_question) + scale_size_continuous(limits = c(1, 
        60), range = c(1, 10), guide = "none") + scale_color_discrete(name = NULL) + 
        theme_minimal() + theme(legend.position = "right", aspect.ratio = 1, 
        plot.title = element_text(size = title_size), axis.title.x = element_text(size = axis_size), 
        axis.title.y = element_text(size = axis_size), legend.text = element_text(size = legend_size), 
        legend.spacing.y = unit(0, "pt"))
    plot2 <- ggplot(plot_counts_all, aes(x = Score_x, y = Score_y)) + 
        geom_jitter(aes(size = Count), width = 0.5, height = 0.3, 
            alpha = 0.5, na.rm = TRUE) + labs(title = paste(x_question, 
        "vs", y_question), x = x_question, y = y_question) + 
        scale_size_continuous(limits = c(1, 60), range = c(1, 
            10)) + scale_color_discrete(name = NULL) + theme_minimal() + 
        theme(legend.position = "right", aspect.ratio = 1, plot.title = element_text(size = title_size), 
            axis.title.x = element_text(size = axis_size), axis.title.y = element_text(size = axis_size), 
            legend.text = element_text(size = legend_size))
    grid.arrange(plot1, plot2, ncol = 2)
    suppressMessages({
        ggsave(filename = paste0(x_question, "_vs_", y_question, 
            "_scatter_plot_by_surveytype.png"), plot = plot1, 
            width = 8, height = 8)
        ggsave(filename = paste0(x_question, "_vs_", y_question, 
            "_scatter_plot_all.png"), plot = plot2, width = 8, 
            height = 8)
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
