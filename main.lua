require('love')

function love.load()
    love.graphics.setNewFont(30)

    gridXCount = 4
    gridYCount = 4

    grid = {}

    for y = 1, gridYCount do
        grid[y] = {}
        for x = 1, gridXCount do
            grid[y][x] = ((y - 1) * gridXCount) + x
        end
    end
end

function love.update(dt)
end

function love.draw()
    for y = 1, gridYCount do
        for x = 1, gridXCount do
            if grid[y][x] ~= gridXCount * gridYCount then
                local pieceSize = 100
                local pieceDrawSize = pieceSize - 1

                love.graphics.setColor(0, .8, 0)
                love.graphics.rectangle(
                    'fill', 
                    (x - 1) * pieceSize,
                    (y - 1) * pieceSize,
                    pieceDrawSize,
                    pieceDrawSize
                )

                love.graphics.setColor(1, 1, 1)
                love.graphics.print(
                    grid[y][x],
                    (x - 1) * pieceSize,
                    (y - 1) * pieceSize
                )
            end
        end
    end
end