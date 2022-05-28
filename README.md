# Ocerium_Project Made by SALFIIN#2470

# Library core
first we have to add a loadstring for library usage

```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/slf0Dev/Ocerium_Project/main/Library.lua"))()
```


# Creating a window

```lua
Window = Library.Main("Your Text","LeftAlt") -- change "LeftAlt" to key that you want will hide gui
```

# Adding tabs and sections
```lua
--tab
local Tab = Window.NewTab("Your Tab Text")

--section
local Section = GuiCategory.NewSection("Section Text")

```
