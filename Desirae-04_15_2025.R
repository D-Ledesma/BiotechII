source("http://www.zzlab.net/GAPIT/GAPIT.library.R"))

myY <- read.table(file = "http://zzlab.net/GAPIT/data/mdp_traits.txt", header = TRUE)
View(myY)

myGD <- read.table(file = "http://zzlab.net/GAPIT/data/mdp_numeric.txt", header = TRUE)
head(myGD)[ ,c(1:10)]

myGM <- read.table(file = "http://zzlab.net/GAPIT/data/mdp_SNP_information.txt", header = TRUE)
head(myGM)

myGAPIT=GAPIT(Y=myY[,c(1,2)], GD=myGD, GM=myGM, PCA.total=3, model=c("MLM"))

View(myGAPIT$GWAS)
install.packages("qqman")

result <- read.csv("GAPIT.Association.GWAS_Results.MLM.EarHT.csv",  header = T)
head(result)

manhattan(result, main="Ear height", chr = "Chr", bp = "Pos", p = "P.value", snp = "SNP",           
          col = c("blue", "orange"),           
          genomewideline = 3.5,  highlight = "PZA03188.4"  )

png("manhattan_plot.png", width = 8, height = 4, units = "in", res = 300 )

manhattan(result, main="Ear height", chr = "Chr", bp = "Pos", p = "P.value", snp = "SNP",           
          col = c("blue", "orange"),           
          genomewideline = 3.5,  highlight = "PZA03188.4"  )

dev.off()


# New GWAS analysis

myGAPIT2=GAPIT(Y=myY[,c(1,4)], GD=myGD, GM=myGM, PCA.total=3, model=c("MLM"))

View(myGAPIT2$GWAS)
install.packages("qqman")

result2 <- read.csv("GAPIT.Association.GWAS_Results.MLM.EarDia.csv",  header = T)
head(result)

manhattan(result2, main="Ear diameter", chr = "Chr", bp = "Pos", p = "P.value", snp = "SNP",           
          col = c("blue", "orange"),           
          genomewideline = 3.5,  highlight = "PZA00453.7"  )

png("manhattan_plot2.png", width = 8, height = 4, units = "in", res = 300 )

manhattan(result2, main="Ear diameter", chr = "Chr", bp = "Pos", p = "P.value", snp = "SNP",           
          col = c("blue", "orange"),           
          genomewideline = 3.5,  highlight = "PZA00453.7"  )

dev.off()
