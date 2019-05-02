# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(m^2), where m is the matrix. Could I also say O(n*m)?
# Space complexity: O(n+m), where n is the rows and m is the columns
def matrix_check_sum(matrix)
  rows = matrix.length
  columns = matrix[0].length

  rows.times do |i|
    sum_rows = 0
    sum_columns = 0

    columns.times do |j|
      sum_rows += matrix[i][j]
      sum_columns += matrix[j][i]
    end
    return false if sum_rows != sum_columns
  end
  true
end
