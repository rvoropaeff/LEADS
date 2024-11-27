create_scatter_plot_all <-
function(x_question, y_question) {
  # Check for questions in the dataframe
  if (!(x_question %in% ALL_data$Question)) stop("X-axis question not found.")
  if (!(y_question %in% ALL_data$Question)) stop("Y-axis question not found.")
  
  # Prepare data for x_question
  x_data <- ALL_data %>% 
    filter(Question == x_question) %>% 
    select(SurveyId, UserId, Score) %>% 
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
    group_by(Score_x, Score_y) %>% 
    summarise(Count = n(), .groups = 'drop') 
  
  # Remove rows with zero counts to avoid warnings
  plot_counts <- plot_counts %>%
    filter(Count > 0)

  # Get n values
  n_x <- nrow(x_data)
  n_y <- nrow(y_data)

  # Create scatter plot without jitter
  plot <- ggplot(plot_counts, aes(x = Score_x, y = Score_y)) +  
    geom_point(aes(size = Count), alpha = 0.3) +  # Use points instead of jitter
    geom_text(aes(label = Count), hjust = -1.0, size = 3, color = "black") +  # Adjust position to the right
    labs(title = paste(x_question, "vs", y_question, "| n_x =", n_x, ", n_y =", n_y),
         x = paste(x_question),
         y = paste(y_question),
         size = "Count") +  
    theme_minimal() +
    theme(legend.position = "right", plot.title = element_text(hjust = 0.7))  # Center the title

  # Print the plot
  print(plot)
  
  # Optionally save the plot
  ggsave(filename = paste0(x_question, "_vs_", y_question, "_scatter_plot.png"), plot = plot)  
}
