#!/usr/bin/env Rscript
# define variables
args = commandArgs(trailingOnly=TRUE)

# test if there are three arguments
if (length(args)<2) {
  stop("Arguments needed: MEASUREMENT AND FIGURE_DIR", call.=FALSE)
}

MEASUREMENT=args[1]
FIGURE_DIR=args[2]

# load libraries
library(tidyverse)
library(ggplot2)
library(readr)

# read data
data <- read.delim(MEASUREMENT, check.names = F) %>%
  pivot_longer(cols = c(Baseline, `After Four Weeks`), 
               names_to = "experiment_time",
               values_to = "measurement")

# making comparison for statistical test
group_list <- unique(data$experiment_time)

my_comparisons <- combn(group_list, 2, simplify = F)

# making plot
figure <- ggplot(data, 
                 aes(x = experiment_time, 
                     y = measurement,
                     fill = experiment_time)) +
    geom_violin() +
    scale_fill_manual(values=c("#0000FF", "#BFBFFF")) +
    ylim(0, 500) +
    ggpubr::stat_compare_means(method = "t.test", paired = T, label = "p.signif", 
                             comparisons = my_comparisons,
                             tip.length = 0.01,
                             label.y.npc = "0.5") +
    theme_bw() +
    stat_summary(fun=mean, geom="point", size=2, color="orange") +
    stat_summary(fun=median, geom="point", size=2, color="black") +
    xlab("Measurement Data over Time") +
    ylab("Melanin Measurement") +
    theme(
    axis.title.x = element_text(color="black", size=16, family = "serif"),
    axis.title.y = element_text(color="black", size=16, family = "serif"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text.x.bottom = element_text(color="black", size=14, family = "serif"),
    axis.text.y.left = element_text(color="black", size=14, family = "serif"),
    axis.ticks.length = unit(5, "pt"),
    axis.minor.ticks.length = rel(1)
  ) 

# save plot
ggsave(paste0(FIGURE_DIR, "/automated_plot.png"), width = 6, height = 4, dpi = 300)
