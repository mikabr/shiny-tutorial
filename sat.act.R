head(sat.act)
nrow(sat.act)

quartz()
ggplot(sat.act, aes(x = SATV, y = SATQ, color = factor(gender))) +
  geom_point() +
  geom_smooth(method = "lm")
