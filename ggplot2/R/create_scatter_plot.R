create_scatter_plot <-
function(x_question, y_question, title_size = 14, axis_size = 12, legend_size = 10) {
  # Check for questions in the dataframe
  if (!(x_question %in% ALL_data$Question)) stop("X-axis question not found.")
  if (!(y_question %in% ALL_data$Question)) stop("Y-axis question not found.")
  
  # Prepare data for x_question, including surveytype
  x_data <- ALL_data %>% 
    filter(Question == x_question) %>% 
    select(SurveyId, UserId, surveytype, Score) %>% 
    rename(Score_x = Score)

  # Prepare data for y_question, without surveytype
  y_data <- ALL_data %>% 
    filter(Question == y_question) %>% 
    select(SurveyId, UserId, Score) %>% 
    rename(Score_y = Score)

  # Join data on SurveyId and UserId
  plot_data <- inner_join(x_data, y_data, by = c("SurveyId", "UserId")) 
  
  # Filter out rows with NA values
  plot_data <- plot_data %>% filter(!is.na(Score_x) & !is.na(Score_y))

  # Calculate counts for each combination of raw scores
  plot_counts_surveytype <- plot_data %>%
    group_by(surveytype, Score_x, Score_y) %>%
    summarise(Count = n(), .groups = 'drop')  # Count occurrences

  # Remove rows with zero counts to avoid warnings
  plot_counts_surveytype <- plot_counts_surveytype %>% filter(Count > 0)

  # Create scatter plot
  plot <- ggplot(plot_counts_surveytype, aes(x = Score_x, y = Score_y)) + 
    geom_jitter(aes(size = Count, color = surveytype), 
                width = 0.3, height = 0.3, alpha = 0.3, na.rm = TRUE) +  
    geom_text(aes(label = Count), vjust = -1, size = 3) +  # Add data labels
    labs(title = paste(x_question, "vs", y_question),
         x = x_question,
         y = y_question) +  
    scale_size_continuous(limits = c(1, 60), range = c(1, 10), guide = "none") +  
    scale_color_discrete(name = NULL) +  
    theme_minimal() +
    theme(
      legend.position = "right",
      aspect.ratio = 1,
      plot.title = element_text(size = title_size),  
      axis.title.x = element_text(size = axis_size),  
      axis.title.y = element_text(size = axis_size),  
      legend.text = element_text(size = legend_size)   
    )

  # Print the plot
  print(plot)
  
  # Optionally save the plot as an image
  ggsave(filename = paste0(x_question, "_vs_", y_question, "_scatter_plot_by_surveytype.png"), 
         plot = plot, width = 8, height = 8)  
}
