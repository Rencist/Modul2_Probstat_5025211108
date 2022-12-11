oneWayAnova <- read.table("data_soal_4.txt", h = T)
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