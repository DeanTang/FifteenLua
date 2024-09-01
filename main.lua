require('love')

function love.load()
end

function love.update(dt)
end

function love.draw()
    for y = 1, 4 do
        for x = 1, 4 do
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
        end
    end
end