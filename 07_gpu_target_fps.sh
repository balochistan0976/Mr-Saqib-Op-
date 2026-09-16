#!/system/bin/sh
# GPU-07 | GPU Target FPS Matching
SCRIPT_DIR="$(cd "$(dirname "$0")/../.." 2>/dev/null && pwd)"
. "$SCRIPT_DIR/core/lib_common.sh"
. "$SCRIPT_DIR/core/lib_hardware.sh"
if [ -n "$MAX_HZ" ] && [ "$MAX_HZ" != "0" ]; then
  safe_setprop "debug.sf.gpu_target_fps" "$MAX_HZ"
  log_success "GPU target FPS set to ${MAX_HZ}"
else
  log_info "Refresh rate unknown, skipping GPU target FPS"
fi
