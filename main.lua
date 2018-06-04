-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Momin Ahmed
-- Created on: May 31 2018
-----------------------------------------------------------------------------------------
local dayTextField = native.newTextField( display.contentCenterX , display.contentCenterY - 400, 450, 150 )
dayTextField.id = "day textField"
local chooseDayField = display.newText( " What day is it? ", display.contentCenterX , display.contentCenterY - 500, native.systemFont, 85 )
chooseDayField.id = "choose day textField"
chooseDayField:setFillColor( 1, 1, 1 )
local ageTextField = native.newTextField( display.contentCenterX , display.contentCenterY - 200, 450, 150 )
ageTextField.id = "age textField"
local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 425, 251 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

local ageField = display.newText( " How old are you? ", display.contentCenterX , display.contentCenterY - 300, native.systemFont, 85 )
ageField.id = "age textField"
ageField:setFillColor( 1, 1, 1 )

local weekendField = display.newText( "", display.contentCenterX , display.contentCenterY + 500, native.systemFont, 85 )
weekendField.id = "weekend textField"
weekendField:setFillColor( 1, 1, 1 )

local workField = display.newText( "", display.contentCenterX , display.contentCenterY + 500, native.systemFont, 85 )
workField.id = "work textField"
workField:setFillColor( 1, 1, 1 )

local schoolField = display.newText( "", display.contentCenterX , display.contentCenterY + 500, native.systemFont, 85 )
schoolField.id = "school textField"
schoolField:setFillColor( 1, 1, 1 )
local age
local day
local function calculateButtonTouch( event )
	age = tonumber(ageTextField.text)
	day = dayTextField.text
	if (day == "sunday" or day == "saturday") then
        weekendField.text = " Relax! It's a weekend! "
	elseif age > 18 then
		workField.text = " Time for work "
	else schoolField.text = " Time for school "
	end

    return true
end
calculateButton:addEventListener( "touch", calculateButtonTouch )
