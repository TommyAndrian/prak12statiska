df_tommy=read.delim("clipboard")
head(df_tommy)
model_reg=lm(df_tommy$y~df_tommy$x)
summary(model_reg)

df_tommy=read.delim("clipboard")
df_tommy$brick_dummy <- ifelse(df_tommy$Brick =="Yes" , 1,0)
df_tommy$N_dummy1 <- ifelse(df_tommy$Neighborhood == "West" , 1,0)
df_tommy$N_dummy2 <- ifelse(df_tommy$Neighborhood == "North" , 1,0)
model=lm(df_tommy$Price~df_tommy$SqFt+df_tommy$Bedrooms+df_tommy$Bathrooms+df_tommy$brick_dummy+df_tommy$N_dummy1+df_tommy$N_dummy2)
summary(model)

by(df_tommy$Price, df_tommy$Neighborhood, mean)
by(df_tommy$Price, df_tommy$Brick, mean)
