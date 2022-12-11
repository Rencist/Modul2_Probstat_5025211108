## Soal 1

  X <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
  Y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
  
  # Poin A
    sd(Y - X)
  
  # Poin B
    t.test(Y, X, paired = TRUE)
  
  # Poin C
    # Penjelasan terlampir pada Readme.md


## Soal 2
  install.packages("BSDA")
  library(BSDA)
  
  # Poin A
    # Penjelasan terlampir pada Readme.md
  
  # Poin B 
    tsum.test(mean.x = 23500, s.x = 3900, n.x = 100)
  
  # Poin C
    # Penjelasan terlampir pada Readme.md

    
# Soal 3
  install.packages("BSDA")
  library(BSDA)
    
  # Poin A
    # Penjelasan terlampir pada Readme.md
    
  # Poin B
    tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
      mean.y =2.79 , s.y = 1.32, n.y = 27, 
      alternative = "greater", var.equal = TRUE)
    
 # Poin C
    install.packages("mosaic")
    library(mosaic)
    
    plotDist(dist = 't', df = 2, col = "red")
    
  # Poin D
    qchisq(p = 0.05, df = 2, lower.tail = FALSE)
    
  # Poin E
    # Penjelasan terlampir pada Readme.md    
  # Poin F
    # Penjelasan terlampir pada Readme.md
    

# Soal 4
  data_soal_4 <- "onewayanova.txt"
  oneWayAnova <- read.table(data_soal_4, h = T)
  attach(oneWayAnova)
  names(oneWayAnova)
  
  # Poin A  
    oneWayAnova$Group <- as.factor(oneWayAnova$Group)
    oneWayAnova$Group = factor(oneWayAnova$Group,labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))
    
    class(oneWayAnova$Group)
    
    Group1 <- subset(oneWayAnova, Group == "Kucing Oren")
    Group2 <- subset(oneWayAnova, Group == "Kucing Hitam")
    Group3 <- subset(oneWayAnova, Group == "Kucing Putih")
    
    qqnorm(Group1$Length)
    qqline(Group1$Length)
    
    qqnorm(Group2$Length)
    qqline(Group2$Length)
    
    qqnorm(Group3$Length)
    qqline(Group3$Length)
  
  # Poin B
    bartlett.test(Length ~ Group, data = oneWayAnova)
  
  # Poin C
    model1 = lm(Length ~ Group, data = oneWayAnova)
    anova(model1)
  
  # Poin D
    # Penjelasan terlampir pada Readme.md
  
  # Poin E
    TukeyHSD(aov(model1))
  
  # Poin F
    install.packages("ggplot2")
    library("ggplot2")
  
    ggplot(oneWayAnova, aes(x = Group, y = Length)) + 
      geom_boxplot(fill = "grey80", colour = "black") + 
      scale_x_discrete() + xlab("Treatment Group") + 
      ylab("Length (cm)")
    
    
# Soal 5
  
  install.packages("multcompView")
  library(readr)
  library(ggplot2)
  library(multcompView)
  library(dplyr)
    
  # Poin A
    data_soal_5 <- "gtl.csv"
    GTL <- read_csv(data_soal_5)
    head(GTL)
    
    str(GTL)
    
    qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)
    
  # Poin B
    GTL$Glass <- as.factor(GTL$Glass)
    GTL$Temp_Factor <- as.factor(GTL$Temp)
    str(GTL)
    
    anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
    summary(anova)
  
  # Poin C
    data_summary <- group_by(GTL, Glass, Temp) %>%
      summarise(mean = mean(Light), sd = sd(Light)) %>%
      arrange(desc(mean))
    print(data_summary)
  
  # Poin D
    tukey <- TukeyHSD(anova)
    print(tukey)
  
  # Poin E
    tukey.cld <- multcompLetters4(anova, tukey)
    print(tukey.cld)
  
    cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
    data_summary$Tukey <- cld$Letters
    print(data_summary)
    
    write.csv("GTL_summary.csv")