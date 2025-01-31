Types <- c("Cherry", "Oak", "Birch", "Maple", "Hickory", "Redwood", "Butternut", "Black Locus", "Hemlock", "Cucumber tree")
Trees <- data.frame (
  Tree_types = c(Types),
  Width = c(26, 28, 25, 7, 26, 12, 21, 10, 3, 18),
  Height = c(125, 159, 210, 190, 98, 78, 141, 234, 65, 23),
  Leaf_number = c(1590, 2345, 132, 4572, 1738, 4231, 523, 934, 720, 2947),
  Root_length = c(1234, 2134, 1893, 1523, 2341, 2102, 1490, 1782, 1629, 7110),
  Smell = c("sweet", "earthy", "woody", "sweet", "stinky", "minty", "peppery", "rotten", "refreshing", "musty"),
  Texture = c("rough", "smooth", "deeply furrowed", "scaley", "scratchy", "silky", "oily", "dry", "wet", "uneven"),
  Taste = c("sweet", "sour", "smokey", "bitter", "umami", "fruity", "bland", "burnt", "spicy", "citrusy"),
  Huggability = c(9, 1, 9, 3, 10, 8, 7, 8, 4, 1),
  Hardness = c(3767, 815, 1800, 3835, 900, 1348, 830, 953, 3229, 2916),
  Fruit_bearing = c("annual", "biennial", "irregular", "alternate", "partial", "biannual", "irregular", "annual", "nonbearing", "annual"),
  Sap_production = c("lots", "none", "none", "little", "none", "lots", "none", "lots", "none", "little"))
plot(Trees$Height, Trees$Leaf_number,
xlab = "Height",
ylab = "Leaf number",
main = "Height vs Leaf number",
pch = (10), 
col = ("purple"))

