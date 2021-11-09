import 'package:device_frame/src/info/info.dart';

import 'package:device_frame/src/devices/windows/surface3/device.dart'
    as i_surface3;
import 'package:flutter/widgets.dart';

/// A set of iOS devices.
class WindowsDevices {
  const WindowsDevices();

  DeviceInfo get surface3 => i_surface3.info;

  DeviceInfo get wideMonitor => _wideMonitor;
  static final _wideMonitor = DeviceInfo.genericDesktopMonitor(
    platform: TargetPlatform.windows,
    name: 'Large',
    id: 'large',
    screenSize: const Size(1920, 1080),
    windowPosition: Rect.fromCenter(
      center: const Offset(
        1920 * 0.5,
        1080 * 0.5,
      ),
      width: 1620,
      height: 780,
    ),
  );

  DeviceInfo get laptop => _laptop;
  static final _laptop = DeviceInfo.genericLaptop(
    platform: TargetPlatform.windows,
    name: 'Laptop',
    id: 'laptop',
    screenSize: const Size(1920, 1080),
    windowPosition: Rect.fromCenter(
      center: const Offset(
        1920 * 0.5,
        1080 * 0.5,
      ),
      width: 1620,
      height: 780,
    ),
  );

  List<DeviceInfo> get all => [
        surface3,
        wideMonitor,
        laptop,
      ];
}
