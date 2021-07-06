local function calculate(self, ...)
    local numbers = {...}
    local result = 0
    
    if self == "add" then
        for i, v in next, numbers do
            result = result + v 
        end
    elseif self == "subtract" then
        result = numbers[1]
        table.remove(numbers, 1)
        
        for i, v in next, numbers do
            result = result - v
        end
    elseif self == "multiply" then
        result = numbers[1]
        table.remove(numbers, 1)
        
        for i, v in next, numbers do
            result = result * v 
        end
    end
    
    return result
end

return calculate
