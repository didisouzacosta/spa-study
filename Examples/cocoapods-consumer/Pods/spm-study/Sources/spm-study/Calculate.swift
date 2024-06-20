/// A class that provides static methods for basic arithmetic operations.
public class Calculate {

    /// Sums an array of Float values.
    ///
    /// - Parameter values: A variadic parameter of Float values to be summed.
    /// - Returns: The sum of the input values.
    ///
    /// # Example
    /// ```
    /// let result = Calculate.sum(1.2, 3.4, 5.6)
    /// result is 10.2
    /// ```
    public static func sum(_ values: Float...) -> Float {
        values.reduce(0, +)
    }
    
    /// Sums an array of Int values.
    ///
    /// - Parameter values: A variadic parameter of Int values to be summed.
    /// - Returns: The sum of the input values.
    ///
    /// # Example
    /// ```
    /// let result = Calculate.sum(1, 2, 3, 4)
    /// result is 10
    /// ```
    public static func sum(_ values: Int...) -> Int {
        values.reduce(0, +)
    }
    
    /// Subtracts an array of Float values from the first value.
    ///
    /// - Parameter values: A variadic parameter of Float values to be subtracted.
    /// - Returns: The result of subtracting the input values from the first value.
    ///
    /// # Example
    /// ```
    /// let result = Calculate.subtract(10.0, 3.0, 2.0)
    /// result is 5.0
    /// ```
    public static func subtract(_ values: Float...) -> Float {
        values.reduce(0) { partial, current in
            partial == 0 ? current : partial - current
        }
    }
    
    /// Subtracts an array of Int values from the first value.
    ///
    /// - Parameter values: A variadic parameter of Int values to be subtracted.
    /// - Returns: The result of subtracting the input values from the first value.
    ///
    /// # Example
    /// ```
    /// let result = Calculate.subtract(10, 3, 2)
    /// result is 5
    /// ```
    public static func subtract(_ values: Int...) -> Int {
        values.reduce(0) { partial, current in
            partial == 0 ? current : partial - current
        }
    }
    
    /// Multiplies an array of Float values.
    ///
    /// - Parameter values: A variadic parameter of Float values to be multiplied.
    /// - Returns: The product of the input values.
    ///
    /// # Example
    /// ```
    /// let result = Calculate.multiply(2.0, 3.0, 4.0)
    /// result is 24.0
    /// ```
    public static func multiply(_ values: Float...) -> Float {
        values.reduce(1, *)
    }
    
    /// Multiplies an array of Int values.
    ///
    /// - Parameter values: A variadic parameter of Int values to be multiplied.
    /// - Returns: The product of the input values.
    ///
    /// # Example
    /// ```
    /// let result = Calculate.multiply(2, 3, 4)
    /// result is 24
    /// ```
    public static func multiply(_ values: Int...) -> Int {
        values.reduce(1, *)
    }
    
}

