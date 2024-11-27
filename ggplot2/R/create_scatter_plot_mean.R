create_scatter_plot_mean <-
function(x_question, y_question) {
  # Check for questions in the dataframe
  if (!(x_question %in% ALL_data$Question)) stop("X-axis question not found.")
  if (!(y_question %in% ALL_data$Question)) stop("Y-axis question not found.")
  
  # Prepare data
  x_data <- ALL_data %>% 
    filter(Question == x_question) %>% 
    select(SurveyId, UserId, surveytype, Score) %>% 
    rename(Score_x = Score)

  y_data <- ALL_data %>% 
    filter(Question == y_question) %>% 
    select(SurveyId, UserId, Score) %>% 
    rename(Score_y = Score)
  
  # Join data on SurveyId and UserId
  plot_data <- inner_join(x_data, y_data, by = c("SurveyId", "UserId")) 
  
  # Calculate mean of Score_x and count by surveytype and Score_y
  plot_counts <- plot_data %>%
    group_by(surveytype, Score_y) %>%
    summarise(Mean_x = mean(Score_x, na.rm = TRUE), 
              Count = n(), 
              .groups = 'drop')  # Count occurrences

  # Filter out rows with NA values in Mean_x or Score_y
  plot_counts <- plot_counts %>%
    filter(!is.na(Mean_x) & !is.na(Score_y))

  # Define nudge distances
  nudge_x <- 0.15  # Horizontal spacing
  nudge_y <- 0.1   # Vertical spacing
  
  # Create scatter plot with nudge to maintain symmetry
  plot <- suppressWarnings({
    ggplot(plot_counts, aes(x = Mean_x, y = Score_y, color = surveytype)) +
      geom_point(aes(size = Count), alpha = 0.5, 
                 position = position_nudge(x = nudge_x, y = nudge_y), na.rm = TRUE) +  # Nudge for spacing
      labs(title = paste("Scatter Plot of", x_question, "Mean vs", y_question, "Raw Scores by Survey Type"),
           x = paste("Mean of", x_question),
           y = y_question,
           size = "Count") +  # Label for size legend
      theme_minimal()
  })

  print(plot)
  
  # Optionally save the plot, suppressing messages
  suppressMessages({
    ggsave(filename = paste0(x_question, "_vs_", y_question, "_scatter_plot_by_surveytype.png"), plot = plot)
  })
}
