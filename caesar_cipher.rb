def cipher(input, shift)
    
    num_array = []
    letter_array = []
    
    input.downcase.each_byte do |x|
        num_array << x
    end
    
    num_array.each_index do |y|
        if num_array[y] >= 97 and num_array[y] <= 122
            if num_array[y] + shift > 122
                num_array[y] = num_array[y] + shift - 26
            else 
                num_array[y] = num_array[y] + shift
            end
        end
    end
        
    num_array.each do |z|
        letter_array << z.chr
    end
    
    letter_array.join
end

cipher("What a string!", 5)

# => "bmfy f xywnsl!"

# NOTES: 
# A-Z 65-90, a-z 97-122
