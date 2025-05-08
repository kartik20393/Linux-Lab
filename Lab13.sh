#!/bin/bash
# Function to create a zombie process
create_zombie() {
    echo "Creating a Zombie Process..."
    (sleep 10) &  # Child process sleeps for 10 seconds
    sleep 5       # Parent sleeps to let child become a zombie
    echo "Parent process exiting."
}
# Function to create an orphan process
create_orphan() {
    echo "Creating an Orphan Process..."
    (while true; do echo "Orphan PID: $$"; sleep 2; done) &  # Child runs indefinitely
    echo "Parent process exiting. Child will become an orphan."
}
# Main menu loop
while true; do
    echo "Menu:"
    echo "1) Create Zombie Process"
    echo "2) Create Orphan Process"
    echo "3) Exit"
    
    read -p "Choose an option: " choice
    case $choice in
        1) create_zombie ;;
        2) create_orphan ;;
        3) echo "Exiting..."; exit ;;
        *) echo "Invalid option. Try again." ;;
    esac
    read -p "Press [Enter] to continue..."
    clear
done
