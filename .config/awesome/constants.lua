local C = {}

C.terminal = "wezterm"
C.editor = os.getenv("EDITOR") or "nvim"
C.modkey = "Mod4"
C.editor_cmd = C.terminal .. " -e " .. C.editor
C.font = "JetBrainsMonoNerdFontComplete Nerd Font 10"

C.bg = "#11121D"
C.red = "#FF7A85"

return C
