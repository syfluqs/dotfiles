[<- widgets](https://github.com/copycat-killer/lain/wiki/Widgets)

Attaches a calendar notification to a widget.
```lua
    lain.widgets.calendar:attach(widget, args)
```
- Left click / scroll down: switch to previous month.
- Right click / scroll up: switch to next month.

`args` is an optional table which can contain:

Variable | Meaning | Type | Default
--- | --- | --- | ---
`cal` | custom call for `cal` \* | string | "/usr/bin/cal"
`cal_format` | notification format \*\* | function | [see here](https://github.com/copycat-killer/lain/blob/master/widgets/calendar.lua#L103-106)
`icons` | Path to calendar icons | string | [lain/icons/cal/white](https://github.com/copycat-killer/lain/tree/master/icons/cal/white)
`font` | Calendar font | string | `beautiful.font`
`font_size` | Calendar font size | int | 12
`fg` | Calendar foreground color | string | `beautiful.fg_normal`
`bg` | Calendar background color | string | `beautiful.bg_normal`
`position` | Calendar position | string | "top_right"
`scr_pos` | Notification screen | int | 1
`followmouse` | Notification behaviour | boolean | false

\* `cal` program options may vary depending on the operating system: you may need to set this variable properly (`/usr/bin/cal -h` [for instance](https://github.com/copycat-killer/lain/pull/34)) in order to display the current day highlighting.

\*\* `cal_format` can be used in case you need to fix the format [because you have more than one occurence of `today` number](https://github.com/copycat-killer/lain/pull/194).

`position` possible values are defined [here](http://awesome.naquadah.org/doc/api/modules/naughty.html#notify).

Notification will show an icon displaying current day, and formatted output
from ``cal`` with current day highlighted.

You can call the notification with a key binding like this:
```lua
    awful.key({ altkey }, "c", function ()
        lain.widgets.calendar:show(7)
    end),
```
where ``altkey = "Mod1"`` and ``show`` argument is an optional integer, meaning timeout seconds.

You can also call it defining a notification screen with a third argument like this:
```lua
    awful.key({ altkey }, "c", function ()
        lain.widgets.calendar:show(7, 0, my_scr_number)
    end),
```
In multiple screen setups, the default behaviour is to show a visual notification pop-up window on the first screen when the widget is hovered with the mouse. By setting `followmouse` to `true` it will be shown on the same screen containing the widget.

### Note

* Naughty notification requires `font` to be **monospaced**, in order to correctly display the output.
* If you have UTF-8 rendering issues in the popup, it's probably because `cal` always colors the output. Try setting `args.cal = "/usr/bin/cal --color=never"`
