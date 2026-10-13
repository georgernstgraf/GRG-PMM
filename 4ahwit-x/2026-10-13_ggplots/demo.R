library(ggplot2)
ggplot(penguins,
       aes(x = year, y = body_mass_g)) +
  geom_smooth() +
  labs(x = "Geburtsjahr (J)", y = "Körpermasse (g)")
