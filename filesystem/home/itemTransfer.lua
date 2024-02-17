local c,s=require("component"),require("sides")
local t=c.transposer
local cS=s.top
local bS=s.west
local cSlot,bSlot,stackSizeToTransfer=1,1,1
if t.transferItem(cS,bS,stackSizeToTransfer,cSlot,bSlot) then
  print("Item transferred successfully!")
else
  print("Item transfer failed.")
end
