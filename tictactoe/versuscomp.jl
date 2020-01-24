using Gtk

win = GtkWindow("Tic Tac Toe", 200, 150)

grid = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""]
]

turnOfPlayer = true

# Move set
player = "X"
comp = "O"
whowon = ""

grid_gtk = GtkGrid()

vbox = GtkBox(:v)

label = GtkLabel("Play time!")

# I am lazy so I type get_prop instead of get_gtk_property
get_prop = get_gtk_property

function setup_grid()
    for x in 1:3, y in 1:3
        grid_gtk[x, y] = GtkButton("")
        signal_connect(btnClick, grid_gtk[x, y], "clicked")
    end
    set_gtk_property!(grid_gtk, :column_homogeneous, true)
    set_gtk_property!(grid_gtk, :column_spacing, 10)
end


function update_grid(board) 
    for x in 1:3, y in 1:3
        set_gtk_property!(grid_gtk[x, y], :label, board[y][x])
    end
end

function isGameOver(board)
    for i in 1:3
        # Checking all columns
        if board[1][i] == board[2][i] == board[3][i]
            if board[1][i] == player
                return [true, player]
            elseif board[1][i] == comp
                return [true, comp]
            end
        end

        # Checking all rows
        if board[i][1] == board[i][2] == board[i][3]
            if board[i][1] == player
                return [true, player]
            elseif board[i][1] == comp
                return [true, comp]
            end
        end
    end

    # Checking diagonal
    #  + | - | -
    #  - | + | -
    #  - | - | +
    if board[1][1] == board[2][2] == board[3][3]
        if board[1][1] == player
            return [true, player]
        elseif board[1][1] == comp
            return [true, comp]
        end
    end

    # Checking diagonal
    #  - | - | +
    #  - | + | -
    #  + | - | -
    if board[1][3] == board[2][2] == board[3][1]
        if board[2][2] == player
            return [true, player]
        elseif board[2][2] == comp
            return [true, comp]
        end
    end

    return [false, ""]
end

# Check if game is tied or not
function isTie(board)
    if isGameOver(board)[1]
        return false
    end
    for x in 1:3, y in 1:3
        if board[y][x] == "" 
            return false 
        end
    end
    return true
end

scores = Dict("X" => -1, "O" => 1, "tie" => 0)

# Added minimax algorithm
function minimax(board, depth, isMaximizing)
    # Check if game is over or tied
    result = isGameOver(board)
    if result[1]
        return scores[result[2]]
    elseif isTie(board)
        return scores["tie"]
    end

    if isMaximizing
        best = -Inf
        for x in 1:3, y in 1:3
            if board[y][x] == ""
                board[y][x] = comp
                # Recursion!
                score = minimax(board, depth + 1, false)
                board[y][x] = ""
                # Maximum of scores so that computer wins
                best = max(score, best)
            end
        end
        return best
    else
        best = Inf
        for x in 1:3, y in 1:3
            if board[y][x] == ""
                board[y][x] = player
                score = minimax(board, depth + 1, true)
                board[y][x] = ""
                # Minimum of scores so that player loses
                best = min(score, best)
            end
        end
        return best
    end
end

# Getting the best move possible to win
function bestMove(board)
    best = -Inf
    move = [1, 1]
    for x in 1:3, y in 1:3
        if board[y][x] == ""
            board[y][x] = comp
            score = minimax(board, 0, false)
            board[y][x] = ""
            if best < score
                best = score
                move = [x, y]
            end
        end
    end
    board[move[2]][move[1]] = comp
end

# Clicking on button
function btnClick(btn)
    btnVal = get_prop(btn, :label, String)
    if btnVal == "" && !isGameOver(grid)[1]
        turnof = player

        set_gtk_property!(btn, :label, turnof)

        for x in 1:3, y in 1:3
            grid[y][x] = get_prop(grid_gtk[x, y], :label, String)
        end

        # Computer Playing
        bestMove(grid)
        update_grid(grid)

        # Checking if game is over
        result = isGameOver(grid)
        if result[1] GAccessor.text(label, "Game Over! " * result[2] * " won!")
        elseif isTie(grid) GAccessor.text(label, "It is a Tie!")
        else GAccessor.text(label, "Minimax Activated")
        end
    elseif btnVal != ""
        GAccessor.text(label, "Cell already filled")
    end
end


setup_grid()

push!(vbox, GtkLabel("=================="))
push!(vbox, grid_gtk)
push!(vbox, GtkLabel("=================="))
push!(vbox, label)
push!(win, vbox)
showall(win)
