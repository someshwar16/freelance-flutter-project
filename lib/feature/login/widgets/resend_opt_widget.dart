import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResendOtpWidget extends StatefulWidget {
  final VoidCallback onResend;

  const ResendOtpWidget({super.key, required this.onResend});

  @override
  State<ResendOtpWidget> createState() => _ResendOtpWidgetState();
}

class _ResendOtpWidgetState extends State<ResendOtpWidget> {
  int _remainingSeconds = 60;
  Timer? _timer;
  bool _isResendEnabled = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    setState(() {
      _isResendEnabled = false;
      _remainingSeconds = 60;
    });

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() => _remainingSeconds--);
      } else {
        timer.cancel();
        setState(() => _isResendEnabled = true);
      }
    });
  }

  void _resendOtp() {
    widget.onResend();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int secs = seconds % 60;
    return "$minutes:${secs.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          _isResendEnabled
              ? "Didn't receive the OTP?"
              : _formatTime(_remainingSeconds),
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          width: 200,
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border(
              bottom: BorderSide(
                color: _isResendEnabled ? Colors.orange : Colors.grey,
                width: 1,
              ),
              top: BorderSide(
                color: _isResendEnabled ? Colors.orange : Colors.grey,
                width: 1,
              ),
              left: BorderSide(
                color: _isResendEnabled ? Colors.orange : Colors.grey,
                width: 1,
              ),
              right: BorderSide(
                color: _isResendEnabled ? Colors.orange : Colors.grey,
                width: 1,
              ),
            ),
          ),
          child: TextButton(
            onPressed: _isResendEnabled ? _resendOtp : null,
            child: Text(
              "Resend OTP",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: _isResendEnabled ? Colors.orange : Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
