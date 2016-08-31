def caesar_cipher(input_text, shift_factor)
    input_text.gsub(/[A-Za-z]/) do |letter|
        case letter.ord
            when (65..90)
                adj = 65
            when (97..122)
                adj = 97
        end
        letter.ord.-(adj).+(shift_factor).%(26).+(adj).chr
    end
end
