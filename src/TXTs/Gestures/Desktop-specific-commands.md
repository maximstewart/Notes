Here are some commonly used, DE-specific commands:

## Budgie Desktop
*  Open run dialog: `nohup budgie-run-dialog`
*  Open Raven notification bar: `dbus-send --session --type=method_call --dest=org.budgie_desktop.Raven /org/budgie_desktop/Raven org.budgie_desktop.Raven.SetExpanded boolean:'true'`
*  Close Raven notification bar: `dbus-send --session --type=method_call --dest=org.budgie_desktop.Raven /org/budgie_desktop/Raven org.budgie_desktop.Raven.SetExpanded boolean:'false'`

## GNOME

## KDE