# Function to convert a number to binary representation
convert_to_binary <- function(num) {
  binary <- as.character(as.integer(intToBits(num)))  # Convert to bits
  binary_string <- paste(rev(binary), collapse = "")  # Reverse and collapse into a string
  binary_string <- sub("^0+", "", binary_string)  # Remove leading zeros
  return(binary_string)  # Return the binary string
}

# Function to count trailing zeros in the binary representation
count_trailing_zeros <- function(num) {
  binary_representation <- convert_to_binary(num)
  trailing_zeros <- nchar(gsub(".*?(1)", "", binary_representation))  # Remove everything before the last '1' and count zeros
  return(trailing_zeros)  # Return the count of trailing zeros
}

# FM Algorithm to estimate the number of unique elements in a stream
fm_algo <- function(stream) {
  max_trailing_zero <- 0  # Initialize the maximum trailing zero counter

  for (item in stream) {
    # Simple hash function (hardcoded logic)
    hashed_value <- (1 * item + 6) %% 32  # Example hash function

    # Compute the trailing zeros for the hashed value
    trailing_zeros <- count_trailing_zeros(hashed_value)
    print(trailing_zeros)
    # Update the maximum trailing zero count
    max_trailing_zero <- max(max_trailing_zero, trailing_zeros)
  }

  # Estimate the cardinality as 2^(max_trailing_zero)
  return(2^max_trailing_zero)
}

# Example usage
stream <- c(1, 2, 3, 4, 5, 6, 4, 2, 5, 9, 1, 6, 3, 7, 1, 2, 2, 4, 2, 1)
cardinality <- fm_algo(stream)
cat("Estimated Cardinality:", cardinality, "\n")
