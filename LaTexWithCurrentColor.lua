
-- Register all Toolbar actions and intialize all UI stuff
function initUi()
  app.registerUi({["menu"] = "Start LaTeX With Current Pen Color", 
      ["callback"] = "laTexWithPenColor", 
     -- ["accelerator"] = "<Control>5", 
      ["toolbarId"] = "laTexWithPenColor", 
      ["iconName"] = "My_LaTeX"});
end

function laTexWithPenColor()
  local color = app.getToolInfo("pen").color
  app.uiAction({action = "ACTION_TOOL_TEXT"})
  app.changeToolColor({color = color, selection = true})
  app.uiAction({action = "ACTION_TEX"})
  app.uiAction({action = "ACTION_TOOL_PEN"})
end
