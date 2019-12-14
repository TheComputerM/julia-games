field_size = 8
mine_count = 9
is_game_over = false

println("`easy`: lol nerd")
println("`medium`: 8x8 grid with 9 mines")
println("`hard`: 16x16 grid with 20 mines")
print("Choose type of Difficulty: ")
diff = string(readline())

if diff === "easy"
    println("Lol nerd")
    exit()
elseif diff === "medium"
    global field_size = 8
    global mine_count = 9
elseif diff === "hard"
    global field_size = 16
    global mine_count = 20
end

# -1 Means the cell is a mine
# 0 Means Empty
# 1 Means 1 mine is around the cell
# 2 Means 2 mines is around the cell
# 3 Means 3 mines is around the cell
# 4 Means 4 mines is around the cell
# 5 Means 5 mines is around the cell
# ...
# 8 Means 8 mines is around the cell
field = zeros(Int32, field_size, field_size)
field_view = Array{Union{String,Int32}}(undef, field_size, field_size)
field_view .= "■"
revealed_cells = 0

instructions = """
Type the coordinates of the cell you want to check.
Type `m 1 2` to mine (1, 2) or `f 1 2` to flag (1, 2) or type `exit` to exit.
"""

function generateRandomCoord(min, max)
    return floor(Int, ((rand(1)[1] * 8) + 1))
end

function checkSurroundingCells(field, x, y)
    noOfMines = 0
    surroundingCells = [
        (x - 1, y - 1),
        (x - 1, y),
        (x - 1, y + 1),
        (x, y - 1),
        (x, y + 1),
        (x + 1, y - 1),
        (x + 1, y),
        (x + 1, y + 1),
    ]
    for c in surroundingCells
        if (c[1] > 0 && c[2] > 0 && c[1] < 9 && c[2] < 9)
            if (field[c[2], c[1]] == -1)
                noOfMines += 1
            end
        end
    end
    return noOfMines
end

function addNumbersToCells()
    for y = 1:field_size
        for x = 1:field_size
            if (field[y, x] != -1)
                global field[y, x] = checkSurroundingCells(field, x, y)
            end
        end
    end
end

# Adding Mines to field
for i = 1:mine_count
    function add_mines()
        x = generateRandomCoord(1, field_size)
        y = generateRandomCoord(1, field_size)
        if (field[y, x] != -1)
            global field[y, x] = -1
        else
            add_mines()
        end
    end
    add_mines()
end

addNumbersToCells()


function displayField(field)
    # Adding column numbers
    finalStr = "   "
    for x = 1:field_size
        finalStr *= "  $(x)"
    end
    finalStr *= "\n   "
    for x = 1:field_size
        finalStr *= "___"
    end
    finalStr *= "\n"

    for y = 1:field_size
        # Adding row numbers
        finalStr *= "$(y) |"

        # Replacing numbers with specific values
        for x = 1:field_size
            val = field[y, x]
            if (val == -1)
                finalStr *= "  *"
            else
                finalStr *= "  $(val)"
            end
        end
        finalStr *= "\n"
    end
    return finalStr
end

function clickOnZero(x, y)
    global field_view[y, x] = "0"
    global revealed_cells = revealed_cells + 1
    surroundingCells = [
        (x - 1, y - 1),
        (x - 1, y),
        (x - 1, y + 1),
        (x, y - 1),
        (x, y + 1),
        (x + 1, y - 1),
        (x + 1, y),
        (x + 1, y + 1),
    ]
    for c in surroundingCells
        if (c[1] > 0 && c[2] > 0 && c[1] < 9 && c[2] < 9)
            if (field[c[2], c[1]] == 0 && field_view[c[2], c[1]] == "■")
                clickOnZero(c[1], c[2])
            elseif (field[c[2], c[1]] != -1 && field_view[c[2], c[1]] == "■")
                global field_view[c[2], c[1]] = field[c[2], c[1]]
                global revealed_cells = revealed_cells + 1
            end
        end
    end
end

function simulateClick(x, y)
    if (field[y, x] == -1)
        global is_game_over = true
        println("You Lost !!")
        println(displayField(field))
        exit()
    elseif (field[y, x] == 0)
        clickOnZero(x, y)
    else
        global field_view[y, x] = field[y, x]
        global revealed_cells = revealed_cells + 1
    end
end

function parseInput(task, x, y)
    if (task == "m")
        simulateClick(x, y)
    elseif (task == "f")
        if (field_view[y, x] == "■")
            global field_view[y, x] = "?"
        end
    end
end

while (!is_game_over)

    # Find the easter egg here
    println("---------------------------------------------------------------------")
    println(displayField(field_view))

    # Uncomment the line below to see the finished field
    # println(displayField(field))

    println(instructions)
    print("Enter Command: ")
    inp = chomp(readline())
    inpList = split(inp)

    if (inp == "exit")
        print(displayField(field))
        exit()
    elseif (length(inpList) == 3)
        x = parse(Int32, inpList[2])
        y = parse(Int32, inpList[3])
        parseInput(inpList[1], x, y)
        if (revealed_cells == (field_size^2) - mine_count)
            println("You Won !!")
            println(displayField(field))
            exit()
        end
    else
        println("Please input correct command")
        exit()
    end
end
