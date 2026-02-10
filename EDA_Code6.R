print("23BAD119")
library(GGally)
library(ggplot2)

retail_data <- read.csv("C:/Users/student/Downloads/6.retail_business.csv")
retail_data$Customer_Segment <- as.factor(retail_data$Customer_Segment)
retail_data$Region <- as.factor(retail_data$Region)

ggpairs(
  retail_data,
  columns = c("Sales", "Profit"),
  aes(color = Customer_Segment, shape = Region),
  title = "Multivariate Analysis of Retail Sales and Profit"
)
