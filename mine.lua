--[[
                      :::!~!!!!!:.
                  .xUHWH!! !!?M88WHX:.
                .X*#M@$!!  !X!M$$$$$$WWx:.
               :!!!!!!?H! :!$!$$$$$$$$$$8X:
              !!~  ~:~!! :~!$!#$$$$$$$$$$8X:
             :!~::!H!<   ~.U$X!?R$$$$$$$$MM!
             ~!~!!!!~~ .:XW$$$U!!?$$$$$$RMM!
               !:~~~ .:!M"T#$$$$WX??#MRRMMM!
               ~?WuxiW*`   `"#$$$$8!!!!??!!!
             :X- M$$$$       `"T#$T~!8$WUXU~
            :%`  ~#$$$m:        ~!~ ?$$$$$$
          :!`.-   ~T$$$$8xx.  .xWW- ~""##*"
.....   -~~:<` !    ~?T#$$@@W@*?$$      /`
W$@@M!!! .!~~ !!     .:XUW$W!~ `"~:    :
#"~~`.:x%`!!  !H:   !WM$$$$Ti.: .!WUn+!`
:::~:!!`:X~ .: ?H.!u "$$$B$$$!W:U!T$$M~
.~~   :X@!.-~   ?@WTWo("*$$$W$TH$! `
Wi.~!X$?!-~    : ?$$$B$Wu("**$RM!
$R@i.~~ !     :   ~$$$$$B$$en:``
?MXT@Wx.~    :     ~"##*$$$$M~

--]]




---                              R E C O I L  C O N T R O L                               ----


EnableRCS = true --- When Set to false, it'll turn off Recoil Control!

RecoilControlMode = "High" --- Presets: "Low", "Medium", "High", "Ultra", "Insanity", "Custom"

RcCustomStrength = 7 -- Value MUST be ROUNDED! No Decimal values such as 6.5!

RequireToggle = true -- Change to false if you want it to always be on.

ToggleKey = "CapsLock" -- Usable Keys: "CapsLock", "NumLock", "ScrollLock"

DelayRate = 7 -- DO NOT CHANGE IF YOU DON'T KNOW WHAT YOU'RE DOING.






--[[
       HOW TO USE FOR DUMBIES, 
  (RC)
1: If the  "EnableRCS" is set to false, change to true.
2: Adjust your Recoil Control Strength, either by using a preset or a custom value!
3: Toggle it on (if you have ForceToggle enabled, else just do step 4.)
4: Hold Mouse1 and Mouse2 (LeftClick and RightClick) and it should drag your cursor downwards.
5: Aim at your target and your done!




(Things to note)
1: I did NOT make the Recoil Control Code, I just simplified everything, so you can adjust it to your needs
2: You don't need to hold down your toggle key, its a toggle.
3: You must hold mouse1 and mouse2, or else IT WONT WORK!
4: DelayRate Works in MS, the lower the faster. 7ms = 0.07s, 2000ms = 2s. However the preset Delay rate is perfect for most FPS games. 
--]]








-------------  Recoil Presets ------
if RecoilControlMode == "Low" then
  RecoilControlStrength = 2
elseif RecoilControlMode == "Medium" then
  RecoilControlStrength = 6
elseif RecoilControlMode == "High" then
  RecoilControlStrength = 8
elseif RecoilControlMode == "Ultra" then
  RecoilControlStrength = 12
elseif RecoilControlMode == "Insanity" then
  RecoilControlStrength = 31
elseif RecoilControlMode == "Custom" then
  RecoilControlStrength = RcCustomStrength
end
--------------------------------------

EnablePrimaryMouseButtonEvents  (true);
function OnEvent(event,arg)
if EnableRCS ~= false then
if RequireToggle ~= false then
    if IsKeyLockOn(ToggleKey)then
        if IsMouseButtonPressed(3)then
            repeat
                if IsMouseButtonPressed(1) then
                    repeat
                        MoveMouseRelative(0,RecoilControlStrength)
                        Sleep(DelayRate)
                    until not IsMouseButtonPressed(1)
                end
            until not IsMouseButtonPressed(3)
        end
    end
    
else 

        if IsMouseButtonPressed(3)then
            repeat
                if IsMouseButtonPressed(1) then
                    repeat
                        MoveMouseRelative(0,RecoilControlStrength)
                        Sleep(DelayRate)
                    until not IsMouseButtonPressed(1)
                end
            until not IsMouseButtonPressed(3)
        end
    end
else 
end  
end