#!/system/bin/sh
# Disable MusicFX Compatibility Redirector to prevent auto-redirect to Dolby
# This allows the actual MusicFX UI to be shown instead

# 1. Wait for the system to be fully booted (Package Manager is ready)
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 2
done

# 2. Safety sleep to ensure PM service is responsive
sleep 2

# 3. Disable the component
# The backslash before $ is CRITICAL
/system/bin/pm disable com.android.musicfx/com.android.musicfx.Compatibility\$Redirector

# 4. Log result
if [ $? -eq 0 ]; then
    log -p i -t MusicFX_Fix "Successfully disabled Redirector component."
else
    log -p e -t MusicFX_Fix "Failed to disable Redirector component."
fi
