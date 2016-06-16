def bubble_sort(numbers)
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

p bubble_sort([99,4,3,78,2,0,2])
# => [0,2,2,3,4,78,99]

def bubble_sort_by(list)
    swapped = true
    
    while swapped
    swapped = false
        for i in (0...list.size-1)
            if yield(list[i], list[i+1]) > 0
                list.insert(i, list.delete_at(i+1))
                swapped = true
            end
        end
    end
    list
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end
# => ["hi", "hey", "hello"]
