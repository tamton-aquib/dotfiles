local C = {}

C.terminal = "kitty"
C.editor = os.getenv("EDITOR") or "nvim"
C.modkey = "Mod4"
C.editor_cmd = C.terminal .. " -e " .. C.editor
C.font = "Mono Lisa 10"

C.bg = "#282828"
-- C.bg = "#11121D"
C.red = "#FF7A85"

return C
