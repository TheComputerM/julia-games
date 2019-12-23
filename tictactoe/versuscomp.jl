using Gtk

win = GtkWindow("Tic Tac Toe", 200, 100)

grid = [
    GtkButton("") GtkButton("") GtkButton("")
    GtkButton("") GtkButton("") GtkButton("")
    GtkButton("") GtkButton("") GtkButton("")
]

grid_view = GtkGrid()

function ifGameOver(grid_arr)
    for x = 1:3
        if get_gtk_property(grid_arr[x, 1], :label, String) ==
           get_gtk_property(grid_arr[x, 2], :label, String) ==
           get_gtk_property(grid_arr[x, 3], :label, String) != ""
            return [true, get_gtk_property(grid_arr[x, 1], :label, String)]
            break
        end
    end
    for y = 1:3
        if get_gtk_property(grid_arr[1, y], :label, String) ==
           get_gtk_property(grid_arr[2, y], :label, String) ==
           get_gtk_property(grid_arr[3, y], :label, String) != ""
            return [true, get_gtk_property(grid_arr[1, y], :label, String)]
            break
        end
    end
    if get_gtk_property(grid_arr[1, 1], :label, String) ==
       get_gtk_property(grid_arr[2, 2], :label, String) ==
       get_gtk_property(grid_arr[3, 3], :label, String) != ""
       return [true, get_gtk_property(grid_arr[1, 1], :label, String)]
    end
    if get_gtk_property(grid_arr[1, 3], :label, String) ==
       get_gtk_property(grid_arr[2, 2], :label, String) ==
       get_gtk_property(grid_arr[3, 1], :label, String) != ""
       return [true, get_gtk_property(grid_arr[1, 3], :label, String)]
    end
    return [false, ""]
end

function checkIfTie(grid_arr)
    for x in 1:3, y in 1:3
        if get_gtk_property(grid_arr[x, y], :label, String) == ""
            return false
            break
        end
    end
    return true
end

function compClick(grid_arr)
    for x in 1:3, y in 1:3
        if get_gtk_property(grid_arr[x, y], :label, String) == ""
            set_gtk_property!(grid_arr[x, y], :label, "O")
            break
        end
    end
end

function clickOnBtn(btn)
    if get_gtk_property(btn, :label, String) == ""
        set_gtk_property!(btn, :label, "X")
        compClick(grid_view)

        gameOver = ifGameOver(grid_view)
        if (gameOver[1])
            info_dialog("Game Over: $(gameOver[2]) Won!")
            exit()
        end
    end
    if (checkIfTie(grid_view))
        info_dialog("It's a Tie")
        exit()
    end
end

for x = 1:3, y = 1:3
    grid_view[x, y] = grid[x, y]
    signal_connect(clickOnBtn, grid_view[x, y], "clicked")
end

set_gtk_property!(grid_view, :column_homogeneous, true)
set_gtk_property!(grid_view, :column_spacing, 15)

push!(win, grid_view)
showall(win)
