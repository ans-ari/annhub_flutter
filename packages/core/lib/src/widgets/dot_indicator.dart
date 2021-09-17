import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DotIndicator extends StatelessWidget {
  final bool _isActive;
  final void Function()? _onTap;
  const DotIndicator({
    required bool isActive,
    void Function()? onTap,
    Key? key,
  })  : _isActive = isActive,
        _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: SizedBox(
        height: 10.h,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          margin: EdgeInsets.symmetric(horizontal: 4.0.w),
          height: _isActive ? 10.h : 8.h,
          width: _isActive ? 12.h : 8.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _isActive ? Colors.white : Colors.white.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
