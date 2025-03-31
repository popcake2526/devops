top -bn1 | grep "Cpu(s)" | awk '{print "Total CPU usage: "100 - $8"%"}'

top -bn1 | grep "Mem :" | awk '{printf "Memory usage: %.2f %%\n", ($6/$4)*100'}
df -h --total | grep "total" | awk '{print "Disk Usage: " $3 "/" $2 " | " $5 " used"}'
echo
echo "---------------------Top 5 Processes by CPU-----------------------"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
echo
echo "--------------------Top 5 Processes by Memory---------------------"
ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 6
