#!/usr/bin/python3

# Script Name: Psutil (Challenge 12)
# Class Name: Ops 301
# Author Name: Carsten Rossen
# Date of Latest Revision: 3/16/21
# Purpose: Uses the cpu_times function in the Psutil library to display time spent by the cpu for different tasks.

# Import libraries
import psutil

# Declare variables
cpu_times = psutil.cpu_times(percpu=False)

# Main
print(f'Time spent by normal processes executing in user mode: {cpu_times[0]}\n')
print(f'Time spent by processes executing in kernel mode: {cpu_times[2]}\n')
print(f'Time when system was idle: {cpu_times[3]}\n')
print(f'Time spent by priority processes executing in user mode: {cpu_times[1]}\n')
print(f'Time spent waiting for I/O to complete: {cpu_times[4]}\n')
print(f'Time spent for servicing hardware interrupts: {cpu_times[5]}\n')
print(f'Time spent for servicing software interrupts: {cpu_times[6]}\n')
print(f'Time spent by other operating systems running in a virtualized environment: {cpu_times[7]}\n')
print(f'Time spent running a virtual CPU for guest operating systems under the control of the Linux kernel: {cpu_times[9]}')

# End