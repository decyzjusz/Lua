local function calculate(self, ...)
    local numbers = {...}
    local result = 0
    
    if self == "add" then
        for i, v in next, numbers do
            result = result + v 
        end
    elseif self == "minus" then
        local base = numbers[1]
        table.remove(numbers, 1)
        
        for i, v in next, numbers do
            base = base - v
            
            result = base
        end
    end
    
    return result
end

return calculate
