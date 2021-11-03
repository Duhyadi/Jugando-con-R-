Código en R para generar la distribución paranormal. Créditos: Julio Téllez
library(tidyverse)
library(ggplot2)
squiggly <- function(x) sin(5 * x) / 200
eyes <- data_frame(x = c(-1, 1), y = 0.06)
mouth <- data_frame(x = 0, y = 0.04)
ggplot(mapping = aes(x = c(-10, 10))) +
  geom_area(stat = "function", fun = squiggly, fill = "white") +
  geom_area(stat = "function", fun = dnorm, fill = "white",
            args = list(mean = 0, sd = 4)) +
  geom_point(data = eyes, aes(x = x, y = y), size = 5) +
  geom_point(data = mouth, aes(x = x, y = y), size = 15) + 
  labs(title = "Distribución Paranormal reproducida por Duhyadi.Codigo tomado de fb: R project en Español.",
       subtitle = "Por @JulioTellez, con código de @andrewheiss.") +
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank())
