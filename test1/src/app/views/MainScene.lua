
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

function MainScene:onCreate()
    -- -- add background image
    -- display.newSprite("HelloWorld.png")
    --     :move(display.center)
    --     :addTo(self)

    -- -- add HelloWorld label
    -- cc.Label:createWithSystemFont("Hello World", "Arial", 40)
    --     :move(display.cx, display.cy + 200)
    --     :addTo(self)
    local green =cc.LayerColor:create(cc.c4f(100, 0, 0, 255))
    self:addChild(green)

    local path = "Yellow_BaseElement"
	local anim = sp.SkeletonAnimation:create(path..".json", path..".atlas", 5)
						:addTo(self)
                        :setPosition(display.cx,display.cy)
                        -- :setScale(0.3)
                        -- :move(display.center)
    -- anim:setSkin("yellow")
    -- anim:setAnimation(1,"effect_down",true)
        anim:setAnimation(1,"standby",true)

end

return MainScene
