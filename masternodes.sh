submenu() {
    while true; do
        select submenu1 in 'Submenu 1' 'Submenu 2' 'Submenu 3' 'Exit to main menu'
        do
            case $REPLY in
                1) echo 'SubMenu1' ;;
                2) echo 'SubMenu2' ;;
                3) echo 'SubMenu3' ;;
                4) break 2 ;;
                *) echo 'Please select an option.' >&2
            esac
            break
        done
    done
}

while true; do
    select mainMenu in 'Main Menu 1' 'Main Menu 2' 'Main Menu 3' 'Quit'
    do
        case $REPLY in
            1) submenu ;;
            2) echo 'MainMenu2' ;;
            3) echo 'MainMenu3' ;;
            4) break 2 ;;
            *) echo 'Please select an option.' >&2
        esac
        break
    done
done
