# create a data frame 
before_diet <- c(104,95,87,77,112)
after_diet <- c(96,91,81,75,118)

diet <- data.frame(before_diet,after_diet)
rownames(diet) <- c("subject_1","subject_2","subject_3","subject_4","subject_5")


# create a list
install.packages("data.table")
install.packages("scales")
library("data.table")
library("scales") 

subject <- rownames(diet)
weight_loss <- percent((before_diet-after_diet)/after_diet)

WEIGHT_LOSS <- list(rownames(diet), 
                    percent((before_diet-after_diet)/after_diet), 
                    data.table(subject,weight_loss)
                    )

message <- "It's a little difficult for me to remember everything taught in class. However, after practicing these homework, I now understand that manipulating data in R is actually more effient"

BUBBLE_DIET <- list(diet,
                    WEIGHT_LOSS,
                    message)
print(BUBBLE_DIET)     
     

