create_scatter_plot_both <-
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

  plot_counts_all <- plot_data %>%
    group_by(Score_x, Score_y) %>%  # No surveytype grouping
    summarise(Count = n(), .groups = 'drop')

  # Remove rows with zero counts to avoid warnings
  plot_counts_surveytype <- plot_counts_surveytype %>% filter(Count > 0)
  plot_counts_all <- plot_counts_all %>% filter(Count > 0)

  # Create scatter plots
  plot1 <- ggplot(plot_counts_surveytype, aes(x = Score_x, y = Score_y)) + 
    geom_jitter(aes(size = Count, color = surveytype), 
                width = 0.3, height = 0.3, alpha = 0.3, na.rm = TRUE) +  
    labs(title = paste(x_question, "vs", y_question),
         x = x_question,
         y = y_question) +  
    scale_size_continuous(limits = c(1, 60), range = c(1, 10), guide = "none") +  # Remove count legend
    scale_color_discrete(name = NULL) +  # Remove color legend title
    theme_minimal() +
    theme(
      legend.position = "right",
      aspect.ratio = 1,
      plot.title = element_text(size = title_size),  # Title size
      axis.title.x = element_text(size = axis_size),  # X-axis label size
      axis.title.y = element_text(size = axis_size),  # Y-axis label size
      legend.text = element_text(size = legend_size),   # Legend text size
      legend.spacing.y = unit(0, "pt")  # Remove space between surveytype and count
    )

  plot2 <- ggplot(plot_counts_all, aes(x = Score_x, y = Score_y)) + 
    geom_jitter(aes(size = Count), 
                width = 0.5, height = 0.3, alpha = 0.5, na.rm = TRUE) +  
    labs(title = paste(x_question, "vs", y_question),
         x = x_question,
         y = y_question) +  
    scale_size_continuous(limits = c(1, 60), range = c(1, 10)) +  
    scale_color_discrete(name = NULL) +  # Remove color legend title
    theme_minimal() +
    theme(
      legend.position = "right",
      aspect.ratio = 1,
      plot.title = element_text(size = title_size),  # Title size
      axis.title.x = element_text(size = axis_size),  # X-axis label size
      axis.title.y = element_text(size = axis_size),  # Y-axis label size
      legend.text = element_text(size = legend_size)   # Legend text size
    )

  # Arrange the plots side by side
  grid.arrange(plot1, plot2, ncol = 2)
  
  # Optionally save the plots as separate images
  suppressMessages({
    ggsave(filename = paste0(x_question, "_vs_", y_question, "_scatter_plot_by_surveytype.png"), plot = plot1, width = 8, height = 8)  # Adjust width and height for 2:2 ratio
    ggsave(filename = paste0(x_question, "_vs_", y_question, "_scatter_plot_all.png"), plot = plot2, width = 8, height = 8)  # Adjust width and height for 2:2 ratio
  })
}
