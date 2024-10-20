# Define the first hash function
mod1 <- function(x) {
  return(x %% 5)
}

# Define the second hash function
mod2 <- function(x) {
  return((2 * x + 3) %% 5)
}

# Function to initialize the Bloom Filter
initialize_bloom_filter <- function(size) {
  return(rep(0, size))  # Create a vector of zeros
}

# Function to insert elements into the Bloom Filter
insert_bloom_filter <- function(lst, a) {
  m1 <- mod1(a)
  m2 <- mod2(a)
  
  lst[m1 + 1] <- 1  # Set the corresponding index in the list
  lst[m2 + 1] <- 1
  return(lst)
}

# Function to check if an element is in the Bloom Filter
check_bloom_filter <- function(lst, a) {
  m1 <- mod1(a)
  m2 <- mod2(a)
  
  return(lst[m1 + 1] == 1 && lst[m2 + 1] == 1)
}

# Example Usage
bloom_filter_size <- 5
bloom_filter <- initialize_bloom_filter(bloom_filter_size)

# Insert elements into the Bloom Filter
elements_to_insert <- c(3, 5)
for (a in elements_to_insert) {
  bloom_filter <- insert_bloom_filter(bloom_filter, a)
}

# Print Bloom Filter status after insertion
cat("Bloom Filter Status after Insertion: ", bloom_filter, "\n")

# Check elements in the Bloom Filter
elements_to_check <- c(3, 4)  # Check for 3 (should be found) and 4 (should not be found)
for (a in elements_to_check) {
  found <- check_bloom_filter(bloom_filter, a)
  
  if (found) {
    cat("Element", a, "may be in the filter (Found!!)\n")
  } else {
    cat("Element", a, "definitely not in the filter (Not found!)\n")
  }
}
