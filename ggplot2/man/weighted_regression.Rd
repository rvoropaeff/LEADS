\name{weighted_regression}
\alias{weighted_regression}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A Capitalized Title (ideally limited to 65 characters)
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
weighted_regression(x_question1, y_question1, x_question2, y_question2, x_limits = c(1, 5), y_limits = c(1, 5), main_title = "", title_size = 10, label_size = 8, text_label_size = 2.6)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x_question1}{
%%     ~~Describe \code{x_question1} here~~
}
  \item{y_question1}{
%%     ~~Describe \code{y_question1} here~~
}
  \item{x_question2}{
%%     ~~Describe \code{x_question2} here~~
}
  \item{y_question2}{
%%     ~~Describe \code{y_question2} here~~
}
  \item{x_limits}{
%%     ~~Describe \code{x_limits} here~~
}
  \item{y_limits}{
%%     ~~Describe \code{y_limits} here~~
}
  \item{main_title}{
%%     ~~Describe \code{main_title} here~~
}
  \item{title_size}{
%%     ~~Describe \code{title_size} here~~
}
  \item{label_size}{
%%     ~~Describe \code{label_size} here~~
}
  \item{text_label_size}{
%%     ~~Describe \code{text_label_size} here~~
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
function (x_question1, y_question1, x_question2, y_question2, 
    x_limits = c(1, 5), y_limits = c(1, 5), main_title = "", 
    title_size = 10, label_size = 8, text_label_size = 2.6) 
{
    create_plot <- function(x_question, y_question, color) {
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
        plot <- suppressWarnings({
            ggplot(plot_counts, aes(x = Score_x, y = Score_y)) + 
                geom_point(aes(size = Count), color = color, 
                  alpha = 0.2) + geom_text(aes(label = Count), 
                position = position_jitter(width = 0, height = 0), 
                size = text_label_size, color = "black") + geom_smooth(method = "lm", 
                aes(weight = Count), se = FALSE, color = "red", 
                quiet = TRUE) + labs(title = paste(x_question, 
                "vs", y_question, "\n", "n_x =", n_x, ", n_y =", 
                n_y), x = paste(x_question), y = paste(y_question), 
                size = "Count") + scale_size_continuous(limits = c(1, 
                100), range = c(1, 25), guide = "none") + scale_x_continuous(limits = x_limits) + 
                scale_y_continuous(limits = y_limits) + theme_minimal() + 
                theme(legend.position = "right", plot.title = element_text(hjust = 0.5, 
                  size = title_size, lineheight = 0.8), axis.text.x = element_text(size = label_size, 
                  face = "bold"), axis.text.y = element_text(size = label_size, 
                  face = "bold"), axis.title.x = element_text(size = label_size), 
                  axis.title.y = element_text(size = label_size), 
                  aspect.ratio = 1)
        })
        return(plot)
    }
    plot1 <- create_plot(x_question1, y_question1, color = "blue")
    plot2 <- create_plot(x_question2, y_question2, color = "black")
    grid.arrange(plot1, plot2, ncol = 2, top = textGrob(main_title, 
        gp = gpar(fontsize = 14, fontface = "bold")))
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
