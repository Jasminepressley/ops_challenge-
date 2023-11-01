# Script Name:                        systeminformation.sh
# Author:                             Jasmine Pressley
# Date of latest revision:            10/31/2023
# Purpose:                            lshw/grep

#main 
echo "Evaluating this computer..."
echo "Computer Name: "$(lshw | grep "" -m1)
echo "CPU: "$(lshw | grep "*-cpu" -A 5)
echo "RAM: "$(lshw | grep "*-memory" -A 3)
echo "Display Adapter: "$(lshw | grep "*-display" -A 10)
echo "Network Adapter: "$(lshw | grep "*-network" 15)
echo "Evaluation complete."

