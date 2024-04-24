
# colors
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
GRAY='\033[0;37m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
BLUE='\033[0;34m'W
WHITE='\033[0;37m'
LIGHT_GRAY='\033[0;37m'



SCRIPT_NAME="dlndot"
SCRIPT_VERSION="0.1"
SCRIPT_AUTHOR="Dlnya Dlzar"

# Define SCRIPT_DESCRIPTION using multi-line string with double quotes
SCRIPT_DESCRIPTION=$(cat <<EOF
dlndot is a an automation tool for setting up a linux machine.
It contains dotfiles and installation of some packages.
Most of the automation scripts are done using ansible.
so running this script multiple times will not cause any issues.
EOF
)

# Define WELCOME_MESSAGE using multi-line string with variable substitution
WELCOME_MESSAGE="
${YELLOW}===============================================================================${NC}
${CYAN} ______   _        _        ______   _______ _________
(  __  \ ( \      ( (    /|(  __  \ (  ___  )\__   __/
| (  \  )| (      |  \  ( || (  \  )| (   ) |   ) (   
| |   ) || |      |   \ | || |   ) || |   | |   | |   
| |   | || |      | (\ \) || |   | || |   | |   | |   
| |   ) || |      | | \   || |   ) || |   | |   | |   
| (__/  )| (____/\| )  \  || (__/  )| (___) |   | |   
(______/ (_______/|/    )_)(______/ (_______)   )_(   
${NC}                                                                                         
${YELLOW}===============================================================================${NC}
Welcome to${CYAN}${SCRIPT_NAME}${NC} Version ${SCRIPT_VERSION} Author:${CYAN}${SCRIPT_AUTHOR}${NC}

${LIGHT_GRAY}${SCRIPT_DESCRIPTION}${NC}

${YELLOW}===============================================================================${NC}
\n
"

# function to print the welcome message
function tui::print_welcome_message() {
    clear
    echo -e "${WELCOME_MESSAGE}"
    sleep 2
    
}