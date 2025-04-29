Full System Cleanup

Delete Temporary Files (Temp): Removes all temporary files stored by the system and applications in %TEMP% and C:\Windows\Temp to free up space.

Delete Prefetch Files: These files help speed up program launches but accumulate over time and slow down the system. The script deletes them to refresh performance.

Delete Recent Files: Removes the list of recently opened files from the "Quick Access" and "Start" menus.

Delete Windows.old Files: These files appear after a major Windows update. Deleting them frees up a significant amount of space.

Delete Logs Folder: Log files are unnecessary for the average user and can take up space when accumulated.

Delete Delivery Optimization Files: These files are stored to speed up updates but take up space.

Delete SoftwareDistribution Files: These are cached update files that sometimes cause issues or consume space.

Automatically Empty Recycle Bin:
Using PowerShell, the script empties the Recycle Bin completely without requiring user intervention.

Delete Thumbnail Cache:
Removes thumbnail cache to free up space and speed up browser and file response times.

Clean DNS Cache:
Using ipconfig /flushdns, the browsing experience is sped up by clearing the cached website addresses.

Clear and Optimize RAM:
With ProcessIdleTasks, the script frees system resources from idle processes to enhance performance.

Fix and Optimize System Components:
Using:

DISM /Cleanup-Image: Repairs corrupted system files.

SFC /Scannow: Scans and fixes corrupted system files.

Speed Up System Boot:
Through bcdedit commands:

useplatformclock and disabledynamictick improve boot timing and system performance.

Enable High-Performance Mode:
Activates a custom power plan to maximize CPU and system resource usage.

Disable Background Applications:
Reduces RAM and battery consumption by stopping unnecessary background processes.

Optimize Program Launch Priority:
Using Win32PrioritySeparation, the script gives higher priority to user applications rather than background processes.

Open Update and Driver Settings:
Automatically opens the Windows update page to install:

System updates

Uninstalled device drivers

Run Disk Cleanup Tool:
Executes cleanmgr /sagerun:1 to manually remove excess files.

Suitable for Beginners and Professionals:

No external programs required.

Safe, with no risk of deleting personal files.

Simple to run with one click.
