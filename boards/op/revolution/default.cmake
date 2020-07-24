
px4_add_board(
	PLATFORM nuttx
	VENDOR op
	MODEL revolution
	TOOLCHAIN arm-none-eabi
	ARCHITECTURE cortex-m4
	ROMFSROOT px4fmu_common
	CONSTRAINED_FLASH
	SERIAL_PORTS
		RC:/dev/ttyS0 # USART1/MAINPORT
		TEL1:/dev/ttyS2 # Servo5/6 UART4
		GPS1:/dev/ttyS1 # Servo3/4 USART2

	DRIVERS
		adc
		barometer/ms5611
		dshot
		gps
		imu/invensense/mpu6000
		magnetometer/hmc5883
		pwm_out
		rc_input
		telemetry/frsky_telemetry
	MODULES
		attitude_estimator_q
		battery_status
		#camera_feedback
		commander
		dataman
		ekf2
		events
		land_detector
		landing_target_estimator
		load_mon
		local_position_estimator
		logger
		mavlink
		mc_att_control
		mc_hover_thrust_estimator
		mc_pos_control
		mc_rate_control
		navigator
		rc_update
		sensors
		#temperature_compensation
	SYSTEMCMDS
		#bl_update
		dmesg
		dumpfile
		esc_calib
		hardfault_log
		i2cdetect
		led_control
		mixer
		#motor_ramp
		motor_test
		#mtd
		nshterm
		param
		perf
		pwm
		reboot
		reflect
		top
		#topic_listener
		tune_control
		usb_connected
		ver
		work_queue
	)
