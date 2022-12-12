local C = {}

C.terminal = "wezterm"
C.editor = os.getenv("EDITOR") or "nvim"
C.modkey = "Mod4"
C.editor_cmd = C.terminal .. " -e " .. C.editor

return C
