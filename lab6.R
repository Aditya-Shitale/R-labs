
      
## Step 1: Initial Exploratory Analysis
        # Check the class of the data frame
        # Check the number of rows and columns
        # Check summary statistics for all columns
        library(dplyr)
        df = read.csv("Sampledata_L6.csv")
        ncol(df)
        nrow(df)
        class(df)
        sapply(df, class)
        
        
## Step 2: Error Correction
        # Create a new dataframe using the first ten columns of dataset
        df1 <- df[1:10, c(1:10)] #Selected 10 cols
        df1
        
        # View all variable labels with the names() function.
        #Modify the variable label with dplyr’s rename().(“How many employees does your company or organization have?” can be changed to Employeeno)
        names(df1) #display names
        df1 <- rename(df1, "Employeeno"="How.many.employees.does.your.company.or.organization.have.")
        df1
        
        
        # Determine the Faulty data types by the str() function and use the function such as as.character(),as.numeric(),as.integer(),as.logical(), as.factor() to change the data type .
        str(df1)
        
        df1$Are.you.self.employed. <- as.character(df1$Are.you.self.employed.)
        df1$Are.you.self.employed.[df1$Are.you.self.employed.=="1"] <- "YES" #replace 1 with YES
        df1$Are.you.self.employed.[df1$Are.you.self.employed.=="0"] <- "NO" #replace 0 with NO
        
        df1$Is.your.employer.primarily.a.tech.company.organization. <- as.character(df1$Is.your.employer.primarily.a.tech.company.organization.)
        df1$Is.your.employer.primarily.a.tech.company.organization.[df1$Is.your.employer.primarily.a.tech.company.organization.=="1"] <- "YES" #replace 1 with YES
        df1$Is.your.employer.primarily.a.tech.company.organization.[df1$Is.your.employer.primarily.a.tech.company.organization.=="0"] <- "NO" #replace 0 with NO
        
        df1$Is.your.primary.role.within.your.company.related.to.tech.IT. <- as.character(df1$Is.your.primary.role.within.your.company.related.to.tech.IT.)
        df1$Is.your.primary.role.within.your.company.related.to.tech.IT.[df1$Is.your.primary.role.within.your.company.related.to.tech.IT.=="1"] <- "YES" #replace 1 with YES
        sapply(df1, class)
        df1
        
        # • Check the String inconsistencies of the column “What is your gender?” using unique() function and correct it to either “Male” or “Female” using function gsub().
        df1 <- df[1:50, c("What.is.your.gender.")]
        unique(df[1:50, c("What.is.your.gender.")])
        df1 <- gsub("I identify as female", "Female", df1)
        df1 <- gsub("Bigender", "Male", df1)
        df1 <- gsub("non-binary", "Male", df1)
        df1 <- gsub("Female assigned at birth", "Female", df1)
        df1 <- gsub("(?i)F | (?i)Female", "1", df1)
        df1 <- gsub("(?i)M | (?i)Male", "0", df1)
        df1 <- gsub("1", "Female", df1)
        df1 <- gsub("0", "Male", df1)
        df1
        
        # Check for missing values in the entire dataframe.
        df2 <- df[1:10, c(1:10)]
        df2[df2==''] <- NA
        df2
        
        #  Eliminate missing values completely from the entire dataframe  
        # Replace the NA’s in the entire dataframe with ‘0’s.
        df2 <- df[1:10, c(1:10)]
        df2[df2==''] <- NA
        df2
        sum(is.na(df2))
        
        df2 <- df[1:30, c("Are.you.self.employed.",
                          "Is.your.employer.primarily.a.tech.company.organization.",
                          "Is.your.primary.role.within.your.company.related.to.tech.IT.",
                          "What.is.your.age.")]
        print("Null Values before modification")
        sum(is.na(df2))
        df2[is.na(df2)] <- 0
        print("Null values after modification")
        sum(is.na(df2))
        df2
        
        
## Step 3: Visual Analysis
        #Using package “plyr” plot the Histogram and the Boxplot of age, the number of diagnosed
        # mental illnesses each respondent has, and the number of believed mental illnesses each
        #  respondent has.
          library(plyr)
          
          # Plot histograms
          # Plot boxplots
          age <- df2$What.is.your.age.
          hist(age, col="grey")
          boxplot(df2$What.is.your.age.)
          
          
          
          
          
        
        
        
        
        