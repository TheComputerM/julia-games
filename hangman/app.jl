println("Player 2 look away !!")
sleep(3)
print("Enter your word Player 1: ")
word = uppercase(string(readline()))
run(`clear`)

lives = 5
liveslost = 0
usedletters = []

wordlist = split(word, "")
wordview = []

for i in wordlist
    if (i == " ") push!(wordview, " ")
    else push!(wordview, "_")
    end
end

function displayLivesLeft()
    man = ["""
    ,,,,,,,,,,,,,,,,,,,,..,,,,,,,...
               ,,,,,              ,.
               ,,,,,              ,,
               ,,,,,           ..,,,,,,
               ,,,,,          ,,      ..
               ,,,,,          ..      ..
               ,,,,,          ...,,,,,..
               ,,,,,             ,...
               ,,,,,     ,.,,.., ,,,, ,,,,.,,
               ,,,,,             ,,,,
               ,,,,,             ,,,,
               ,,,,,             ,,,,
               ,,,,,            .,,,,.
               ,,,,,          ..,    ,..
               ,,,,,         ,,,      ,,,,
               ,,,,,        .,,        .,,,
               ,,,,,       ,,.          ,,,.
               ,,,,,
               ,,,,,
     ..,,,,,,,,,,,,,,,,,,,,,,.
    """, """
    ,,,,,,,,,,,,,,,,,,,,..,,,,,,,...
               ,,,,,              ,.
               ,,,,,              ,,
               ,,,,,           ..,,,,,,
               ,,,,,          ,,      ..
               ,,,,,          ..      ..
               ,,,,,          ...,,,,,..
               ,,,,,             ,...
               ,,,,,     ,.,,.., ,,,, ,,,,.,,
               ,,,,,             ,,,,
               ,,,,,             ,,,,
               ,,,,,             ,,,,
               ,,,,,            .,,,,.
               ,,,,,          ..,
               ,,,,,         ,,,
               ,,,,,        .,,
               ,,,,,       ,,.
               ,,,,,
               ,,,,,
     ..,,,,,,,,,,,,,,,,,,,,,,.
    """, """
    ,,,,,,,,,,,,,,,,,,,,..,,,,,,,...
               ,,,,,              ,.
               ,,,,,              ,,
               ,,,,,           ..,,,,,,
               ,,,,,          ,,      ..
               ,,,,,          ..      ..
               ,,,,,          ...,,,,,..
               ,,,,,             ,...
               ,,,,,     ,.,,.., ,,,, ,,,,.,,
               ,,,,,             ,,,,
               ,,,,,             ,,,,
               ,,,,,             ,,,,
               ,,,,,            .,,,,.
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
     ..,,,,,,,,,,,,,,,,,,,,,,.
    """, """
    ,,,,,,,,,,,,,,,,,,,,..,,,,,,,...
               ,,,,,              ,.
               ,,,,,              ,,
               ,,,,,           ..,,,,,,
               ,,,,,          ,,      ..
               ,,,,,          ..      ..
               ,,,,,          ...,,,,,..
               ,,,,,             ,...
               ,,,,,     ,.,,.., ,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
     ..,,,,,,,,,,,,,,,,,,,,,,.
    """, """
    ,,,,,,,,,,,,,,,,,,,,..,,,,,,,...
               ,,,,,              ,.
               ,,,,,              ,,
               ,,,,,           ..,,,,,,
               ,,,,,          ,,      ..
               ,,,,,          ..      ..
               ,,,,,          ...,,,,,..
               ,,,,,             ,...
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
     ..,,,,,,,,,,,,,,,,,,,,,,.
    """, """
    ,,,,,,,,,,,,,,,,,,,,..,,,,,,,...
               ,,,,,              ,.
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
               ,,,,,
     ..,,,,,,,,,,,,,,,,,,,,,,.
    """]
    println(man[liveslost+1])
end

function displayWordList(arr)
    print("Word: ")
    for i in arr
        print(i)
    end
    println("\n")
end

function displayUsedWords()
    for i in usedletters
        print(i)
    end
    println("\n")
end

function revealLetter(l)
    foundLetter = false
    for i in 1:length(wordlist)
        if (wordlist[i] == l)
            global wordview[i] = l
            foundLetter = true
        end
    end
    if (!foundLetter)
        global liveslost += 1
    end
end

while liveslost != lives
    displayLivesLeft()
    displayWordList(wordview)

    println("")
    print("Guess a letter: ")
    inp = uppercase(string(readline()))
    if (inp in usedletters)
        println("Letter already used, try another!")
    else
        push!(usedletters, inp)
        revealLetter(inp)
    end

    if !("_" in wordview)
        displayWordList(wordlist)
        println("Player 2 Won! They guessed the word!")
        exit()
    end
end

if liveslost == lives
    displayWordList(wordlist)
    println("Player 1 Won! Player 2 could not guess the word!")
    exit()
end
