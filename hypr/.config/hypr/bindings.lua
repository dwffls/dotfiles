-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Unbinds
hl.unbind("SUPER + C")
hl.unbind("SUPER + V")
hl.unbind("SUPER CTRL + V")
hl.unbind("SUPER + W")

-- Overrides
hl.unbind("SUPER CTRL + V")  -- (dup, drop if already above)
o.bind("CTRL + SHIFT + V", "Clipboard manager", "omarchy-menu-clipboard")
o.bind("Scroll_Lock", nil, "omarchy-system-lock")

hl.unbind("SUPER + W")  -- (dup)
o.bind("SUPER + Q", "Close window", hl.dsp.window.close())
o.bind("SUPER + R", nil, "hyprctl reload")

-- Workspace switch: code:10..19 -> ws 1..10
for i = 1, 10 do
    hl.unbind("SUPER + code:" .. (9 + i))
    o.bind("SUPER + code:" .. (9 + i), "Switch to workspace " .. i, hl.dsp.focus({ workspace = i, on_current_monitor = true }))
end