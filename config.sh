# Device
export FOX_BRANCH="fox_11.0"
export DT_LINK="https://github.com/lowpass777/ofox_device_xiaomi_haydn.git -b patch-1"

export DEVICE="haydn"
export OEM="xiaomi"
export TARGET="adbd bootimage"

export OUTPUT="OrangeFox*.zip"

# Kernel Source
# Uncomment the next line if you want to clone a kernel source.
#export KERNEL_SOURCE="https://github.com/Pranav-Talmale/android_kernel_xiaomi_alioth"
#export PLATFORM="sm6150" # Leave it commented if you want to clone the kernel to kernel/$OEM/$DEVICE

# Extra Command

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16

if [ ! -z "$PLATFORM" ]; then
    export KERNEL_PATH="kernel/$OEM/$PLATFORM"
else
    export KERNEL_PATH="kernel/$OEM/$DEVICE"
fi
export DT_PATH="device/$OEM/$DEVICE"
