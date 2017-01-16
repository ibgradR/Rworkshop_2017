# Load ggplot2
library(ggplot2)


# Define data and positionings
iris.plot <- ggplot(data= iris, aes(x= Sepal.Length, y= Sepal.Width))

# Create variables for aesthetics
species.colors <- c("black", "red", "blue")
species.shapes <- c(15, 2, 8)
legend.title <- "Iris Species"

# Create plot by combining layers
iris.plot +
  geom_point(aes(color= Species, shape= Species), size= 3) +
  geom_smooth(aes(color= Species, fill= Species, group= Species),
              size= 0.75,  method= "lm", alpha= 0.2) +
  scale_color_manual(name= "Iris Species", values= c("black", "red", "blue")) +
  scale_fill_manual(name= legend.title, values= species.colors) +
  scale_shape_manual(name= legend.title, values= species.shapes)


