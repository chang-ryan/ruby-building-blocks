def bubblesort(numbers)
    swapped = true

    while swapped
    swapped = false
        for i in (0...numbers.size-1)
            if numbers[i] > numbers[i+1]
                numbers.insert(i, numbers.delete_at(i+1))
                swapped = true
            end
        end
    end
    
    numbers
end

bubblesort([99,4,3,78,2,0,2])
# => [0,2,2,3,4,78,99]
