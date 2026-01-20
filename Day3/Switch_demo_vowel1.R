#WAP in R to accept alphabets from user to chech whether it is vowel or consonant

alph <- readline("Enter an Alphabet: ")

result <- switch(tolower(alph),
                 "a" = "it is vowel",
                 "e" = "it is vowel",
                 "i" = "it is vowel",
                 "o" = "it is vowel",
                 "u" = "it is vowel",
                 "it is consonant"
)

cat("Result:", result, "\n")