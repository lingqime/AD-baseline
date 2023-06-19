# Libraries
library(ggraph)
library(igraph)
library(tidyverse)
library(RColorBrewer)
library(readr)

# create a data frame giving the hierarchical structure of your individuals
set.seed(0)
d1 <- read_csv("Downloads/Processed data copy PD/d1.csv")
d2 <- read_csv("Downloads/Processed data copy PD/d2.csv")
edges <- rbind(d1, d2)
connect <- read_csv("Downloads/Processed data copy PD/connect.csv")

# create a vertices data.frame. One line per object of our hierarchy
vertices  <- read_csv("Downloads/Processed data copy PD/vertices.csv")

# Let's add a column with the group of each name. It will be useful later to color points
vertices$group  <-  edges$from[ match( vertices$name, edges$to ) ]


#Let's add information concerning the label we are going to add: angle, horizontal adjustement and potential flip
#calculate the ANGLE of the labels
vertices$id <- NA
myleaves <- which(is.na( match(vertices$name, edges$from) ))
nleaves <- length(myleaves)
vertices$id[ myleaves ] <- seq(1:nleaves)
vertices$angle <- 90 - 360 * vertices$id / nleaves

# calculate the alignment of labels: right or left
# If I am on the left part of the plot, my labels have currently an angle < -90
vertices$hjust <- ifelse( vertices$angle < -90, 1, 0)

# flip angle BY to make them readable
vertices$angle <- ifelse(vertices$angle < -90, vertices$angle+180, vertices$angle)

# Create a graph object
mygraph <- igraph::graph_from_data_frame( edges, vertices=vertices )

connect_subset1 <- connect[connect$value < 0,]
# The connection object must refer to the ids of the leaves:
from1  <-  match( connect_subset1$from, vertices$name)
to1  <-  match( connect_subset1$to, vertices$name)

connect_subset2 <- connect[connect$value > 0,]
# The connection object must refer to the ids of the leaves:
from2  <-  match( connect_subset2$from, vertices$name)
to2  <-  match( connect_subset2$to, vertices$name)


ggraph(mygraph, layout = 'dendrogram', circular = TRUE) +
  geom_conn_bundle(data = get_con(from = from1, to = to1), alpha=0.3, width=0.6, colour="#4393c3") +
  geom_conn_bundle(data = get_con(from = from2, to = to2), alpha=0.3, width=0.6, colour="#d6604d") +
  
  geom_node_text(aes(x = x*1.15, y=y*1.15, filter = leaf, label=name, angle = angle, hjust=hjust, colour=group), size=3, alpha=1, family = "Times New Roman") +
  
  geom_node_point(aes(filter = leaf, x = x*1.07, y=y*1.07, colour=group, size=value, alpha=0.2)) +
  scale_colour_manual(values= rep( brewer.pal(5,"Paired") , 30)) +
  scale_size_continuous( range = c(0.1,10) ) +
  
  theme_void() +
  theme(
    legend.position="none",
    plot.margin=unit(c(0, 0, 0, 0),"cm")
  )

ggsave("/Users/lingqimeng/Downloads/mygraph.png", dpi = 300, width = 6, height = 6, units = "in")