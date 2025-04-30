while true; do
    echo -e "\n1) Date and time\n2) List files\n3) Current directory\n4) Disk usage\n5) System info\n6) Logged-in users\n7) Memory usage\n8) Network config\n9) Running processes\n10) Exit"
    read -p "Choose [1-10]: " choice
    case $choice in
        1) date ;;
        2) ls -l ;;
        3) pwd ;;
        4) df -h ;;
        5) uname -a ;;
        6) who ;;
        7) free -h ;;
        8) ip addr ;;
        9) ps aux ;;
        10) echo "Goodbye!" && exit ;;
        *) echo "Invalid option." ;;
    esac
done
