#SEPARATING SPAM FROM HAM (PART 1)

### 1.1 Begin by loading the dataset emails.csv into a data frame called emails. Remember to pass the stringsAsFactors=FALSE option when loading the data.
### How many emails are in the dataset?
emails = read.csv("emails.csv", stringsAsFactors = FALSE)
nrow(emails)

### 1.2 How many of the emails are spam?
table(emails$spam)

### 1.3 Which word appears at the beginning of every email in the dataset? Respond as a lower-case word with punctuation removed.
emails$text[1]

### 1.4 Could a spam classifier potentially benefit from including the frequency of the word that appears in every email?
### Yes -- the number of times the word appears might help us differentiate spam from ham.

### 1.5 The nchar() function counts the number of characters in a piece of text. How many characters are in the longest email in the dataset (where longest is measured in terms of ### the maximum number of characters)?
max(nchar(emails$text))

### 1.6 Which row contains the shortest email in the dataset? (Just like in the previous problem, shortest is measured in terms of the fewest number of characters.)
which.min(nchar(emails$text))



