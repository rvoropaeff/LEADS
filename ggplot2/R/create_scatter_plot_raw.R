create_scatter_plot_raw <-
function(x_question, y_question) {
  # Check for questions in the dataframe
  if (!(x_question %in% ALL_data$Question)) stop("X-axis question not found.")
  if (!(y_question %in% ALL_data$Question)) stop("Y-axis question not found.")
  
  # Prepare data for x_question
  x_data <- ALL_data %>% 
    filter(Question == x_question) %>% 
    select(SurveyId, UserId, surveytype, Score) %>% 
    rename(Score_x = Score)

  # Prepare data for y_question
  y_data <- ALL_data %>% 
    filter(Question == y_question) %>% 
    select(SurveyId, UserId, Score) %>% 
    rename(Score_y = Score)

  # Join data on SurveyId and UserId
  plot_data <- inner_join(x_data, y_data, by = c("SurveyId", "UserId")) 
  
  # Filter out rows with NA values
  plot_data <- plot_data %>% filter(!is.na(Score_x) & !is.na(Score_y))

  # Calculate counts for each combination of raw scores
  plot_counts <- plot_data %>%
    group_by(surveytype, Score_x, Score_y) %>%
    summarise(Count = n(), .groups = 'drop')  # Count occurrences
  
  # Remove rows with zero counts to avoid warnings
  plot_counts <- plot_counts %>%
    filter(Count > 0)

  # Create scatter plot with jitter to avoid overlap
  plot <- suppressWarnings({
    ggplot(plot_counts, aes(x = Score_x, y = Score_y, color = surveytype)) +
      geom_jitter(aes(size = Count), width = 0.1, height = 0.3, alpha = 0.5, na.rm = TRUE) +  # Use jitter for points
      labs(title = paste( x_question, "vs", y_question),
           x = paste( x_question),
           y = paste(y_question),
           size = "Count") +  # Label for size legend
      theme_minimal() +
      theme(legend.position = "right")  # Adjust legend position as needed
  })

  # Print the plot
  suppressWarnings(print(plot))
  
  # Optionally save the plot, suppressing messages
  suppressMessages({
    ggsave(filename = paste0(x_question, "_vs_", y_question, "_scatter_plot_by_surveytype.png"), plot = plot)
  })
}
