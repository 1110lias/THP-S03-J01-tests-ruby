def add (a, b)
    le_result = a + b
    return le_result
end

def subtract (a, b)
    le_result = a - b
    return le_result
end

def sum (le_arr)
    le_sum = le_arr.sum 
    return le_sum
end

def lemultiply (a, b)
    le_result = a * b
    return le_result
end

def le_power (a,b)
    le_result = (a ** b)
    return le_result
end

def le_factorial (a)
    le_result = Math.gamma(a + 1).to_i
    return le_result
end