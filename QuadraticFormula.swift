// Define coefficients of quadratic equation
var a: Double = 3.0  
var b: Double = -11.0  
var c: Double = -4.0 

// Calculate discriminant
var discriminant = b*b - 4*a*c

// Calculate square root of discriminant
discriminant = discriminant.squareRoot()

// Calculate first root
var root1 = -b + discriminant
root1 = root1 / (2*a)

// Calculate second root
var root2 = -b - discriminant
root2 = root2 / (2*a)

// Print roots
print(root1)
print(root2)
