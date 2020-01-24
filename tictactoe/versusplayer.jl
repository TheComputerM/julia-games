using Gtk

win = GtkWindow("Tic Tac Toe", 200, 150)

grid = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""]
]

turnOfPlayer1 = true

# Move set
player1 = "X"
player2 = "O"
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


function update_grid() 
    for x in 1:3, y in 1:3
        set_gtk_property!(grid_gtk[x, y], :label, grid[y][x])
    end
end

function isGameOver()
    for i in 1:3
        # Checking all columns
        if grid[1][i] == grid[2][i] == grid[3][i]
            if grid[1][i] == player1
                global whowon = player1
                return true
            elseif grid[1][i] == player2
                global whowon = player2
                return true
            end
        end

        # Checking all rows
        if grid[i][1] == grid[i][2] == grid[i][3]
            if grid[i][1] == player1
                global whowon = player1
                return true
            elseif grid[i][1] == player2
                global whowon = player2
                return true
            end
        end
    end

    # Checking diagonal
    #  + | - | -
    #  - | + | -
    #  - | - | +
    if grid[1][1] == grid[2][2] == grid[3][3]
        if grid[1][1] == player1
            global whowon = player1
            return true
        elseif grid[1][1] == player2
            global whowon = player2
            return true
        end
    end

    # Checking diagonal
    #  - | - | +
    #  - | + | -
    #  + | - | -
    if grid[1][3] == grid[2][2] == grid[3][1]
        if grid[2][2] == player1
            global whowon = player1
            return true
        elseif grid[2][2] == player2
            global whowon = player2
            return true
        end
    end

    return false
end

# Check if game is tied or not
function isTie()
    for x in 1:3, y in 1:3
        if grid[y][x] == "" return false end
    end
    return true
end

# Clicking on button
function btnClick(btn)
    btnVal = get_prop(btn, :label, String)
    if btnVal == "" && !isGameOver()

        turnof = turnOfPlayer1 ? player1 : player2

        set_gtk_property!(btn, :label, turnof)

        for x in 1:3, y in 1:3
            grid[y][x] = get_prop(grid_gtk[x, y], :label, String)
        end

        global turnOfPlayer1 = !turnOfPlayer1
        turnof = turnOfPlayer1 ? player1 : player2
        if isGameOver() GAccessor.text(label, "Game Over! $whowon won!")
        elseif isTie() GAccessor.text(label, "It is a Tie!")
        else GAccessor.text(label, "Turn of $turnof") end

        
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
