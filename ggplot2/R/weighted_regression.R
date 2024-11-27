weighted_regression <-
function(x_question1, y_question1, x_question2, y_question2, 
                                 x_limits = c(1, 5), y_limits = c(1, 5), 
                                 main_title = "", title_size = 10, label_size = 8, text_label_size = 2.6) {
  create_plot <- function(x_question, y_question, color) {
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

    # Create scatter plot with weighted regression line
    plot <- suppressWarnings({
      ggplot(plot_counts, aes(x = Score_x, y = Score_y)) +  
        geom_point(aes(size = Count), color = color, alpha = 0.2) +  
        geom_text(aes(label = Count), 
                  position = position_jitter(width = 0.0, height = 0.0), 
                  size = text_label_size, color = "black") +  
        geom_smooth(method = "lm", aes(weight = Count), se = FALSE, color = "red", quiet = TRUE) +  # Add quiet argument
        labs(title = paste(x_question, "vs", y_question, "\n", 
                           "n_x =", n_x, ", n_y =", n_y),
             x = paste(x_question),
             y = paste(y_question),
             size = "Count") +  
        scale_size_continuous(limits = c(1, 100), range = c(1, 25), guide = "none") +  
        scale_x_continuous(limits = x_limits) +  
        scale_y_continuous(limits = y_limits) +  
        theme_minimal() +
        theme(legend.position = "right", 
              plot.title = element_text(hjust = 0.5, size = title_size, lineheight = 0.8),
              axis.text.x = element_text(size = label_size, face = "bold"),  
              axis.text.y = element_text(size = label_size, face = "bold"),  
              axis.title.x = element_text(size = label_size),  
              axis.title.y = element_text(size = label_size),  
              aspect.ratio = 1)  
    })

    return(plot)
  }

  # Create the two plots with specified colors
  plot1 <- create_plot(x_question1, y_question1, color = "blue")
  plot2 <- create_plot(x_question2, y_question2, color = "black")

  # Arrange the plots side by side with adjusted heights for equal aspect ratio
  grid.arrange(plot1, plot2, ncol = 2, 
               top = textGrob(main_title, gp = gpar(fontsize = 14, fontface = "bold")))
}
