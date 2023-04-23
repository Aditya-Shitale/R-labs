###Question 1
vector1 <- c(1, 1.5, 3, 5, 3.5, 4.5, 3.5)
vector2 <- c(1, 2, 4, 7, 5, 5, 4.5)
dataPoints <- array(c(vector1, vector2), dim = c(7, 2))
plot(dataPoints[,1], dataPoints [,2])
k=2
vec1 = c(1,5) 
vec2 = c(1,7)
centroid = array (c(1,5,1,7), dim = c(k, 2))


plot(dataPoints[,1], dataPoints [,2]) 
points(centroid[,1], centroid[,2],col="red")

distance_from_cluster_1 = (dataPoints [,] - centroid[1,])^2
distance_from_cluster_1 = sqrt(distance_from_cluster_1[1] + distance_from_cluster_1[,2])
distance_from_cluster_2 = (dataPoints[,] - centroid[2,])^2
distance_from_cluster_2 = sqrt(distance_from_cluster_2[1] + distance_from_cluster_2[,2])
total_distance = array(c(distance_from_cluster_1, distance_from_cluster_2), dim = c(7, 2))


c(total_distance[,1] <= total_distance [,2])
dataPoints[,1][c(total_distance[1] <= total_distance [,2])]
mean(dataPoints[1][c(total_distance[,1] <= total_distance [,2])])

new_centroid = centroid


c1 = c(mean(dataPoints[1][c(total_distance[,1] <= total_distance[,2])]), mean(dataPoints[,2][c(total_distance[,1] <= total_distance[,2])]))
c2 = c(mean(dataPoints[,1][!c(total_distance[,1] <= total_distance[,2])]), mean(dataPoints[,2][!c(total_distance[1] <= total_distance[,2])]))
new_centroid[1,] = c1 
new_centroid[2,] = c2
plot(dataPoints[,1], dataPoints [,2])
points(new_centroid[,1], new_centroid[,2],col="red")

### Question 2
	# Loading the data set df <- scale(USArrests) # Scaling the data head(df, n = 3)
data("USArrests")
install.packages("factoextra") 
library(factoextra)

set.seed(123)
km.res <- kmeans(df, 4, nstart = 25)
print(km.res)

aggregate(USArrests, by=list(cluster=km.res$cluster), mean) 
dd <- cbind(USArrests, cluster = km.res$cluster)
head(dd)


km.res$cluster
head(km.res$cluster, 4)


km.res$size
km.res$centers

