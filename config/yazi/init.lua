require("git"):setup()

Status:children_add(
    function(self)
        local h = self._current.hovered
        local symlink = ""
        if h and h.link_to then
            symlink = " -> " .. tostring(h.link_to)
        else
            symlink = ""
        end
        return ui.Line {
            ui.Span(symlink):fg("#af87ff"),
            " [",
            ui.Span(os.date("%Y-%m-%d %H:%M", tostring(h.cha.mtime):sub(1, 10))):fg("#af87ff"),
            "] "
        }
    end,
    3300,
    Status.LEFT
)

Status:children_add(
    function()
        local h = cx.active.current.hovered
        if h == nil or ya.target_family() ~= "unix" then
            return ""
        end

        return ui.Line {
            "[",
            ui.Span(ya.user_name(h.cha.uid) or tostring(h.cha.uid)):fg("#af87ff"),
            ":",
            ui.Span(ya.group_name(h.cha.gid) or tostring(h.cha.gid)):fg("#af87ff"),
            "]",
            " "
        }
    end,
    500,
    Status.RIGHT
)
