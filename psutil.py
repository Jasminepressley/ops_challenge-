# Script: Ops Challenge 11
# Author: Jasmine Pressley
# Date of last revision: 12/11/23
# Purpose: Ops Challenge: Psutil
# Resources: ChatGPT, Class Demo 

import psutil

def get_user_mode_time():
    return psutil.cpu_times().user

def get_kernel_mode_time():
    return psutil.cpu_times().system

def get_idle_time():
    return psutil.cpu_times().idle

def get_priority_user_mode_time():
    return psutil.cpu_times().nice

def get_io_wait_time():
    return psutil.cpu_times().iowait

def get_hardware_interrupt_time():
    return psutil.cpu_times().irq

def get_software_interrupt_time():
    return psutil.cpu_times().softirq

def get_virtualized_time():
    return psutil.cpu_times().steal

def get_guest_time():
    return psutil.cpu_times().guest

if __name__ == "__main__":
    print(f"Time spent by normal processes executing in user mode: {get_user_mode_time()}")
    print(f"Time spent by processes executing in kernel mode: {get_kernel_mode_time()}")
    print(f"Time when system was idle: {get_idle_time()}")
    print(f"Time spent by priority processes executing in user mode: {get_priority_user_mode_time()}")
    print(f"Time spent waiting for I/O to complete: {get_io_wait_time()}")
    print(f"Time spent for servicing hardware interrupts: {get_hardware_interrupt_time()}")
    print(f"Time spent for servicing software interrupts: {get_software_interrupt_time()}")
    print(f"Time spent by other operating systems running in a virtualized environment: {get_virtualized_time()}")
    print(f"Time spent running a virtual CPU for guest operating systems: {get_guest_time()}")

