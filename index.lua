local function reverseWords(_string)
    local words = {}
    for word in _string:gmatch("%S+") do
        table.insert(words, word)
    end

    local reversedWords = {}
    for i = #words, 1, -1 do
        table.insert(reversedWords, words[i])
    end

    return table.concat(reversedWords, " ")
end

print(reverseWords(io.read()))
