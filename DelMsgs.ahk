﻿#singleinstance force
#persistent

CoordMode, Mouse, Screen

$insert::
{
;	Click right
;	sleep, 100
;	MouseMove, 30, -50, 10, R
;	Click
;	sleep, 200
;	send, {enter}
;	sleep, 100
;	MouseMove, -30, 50, 10, R
;	Click right
;	sleep, 100
;	;MouseMove, 30, -50, 25, R
;	Click
;	;sleep, 200
;	;send, {enter}
;	;sleep, 100
;	;MouseMove, -30, 50, 25, R
	GetKeyState, ScrollLockState, ScrollLock, T
	while 1
	{
		GetKeyState, ScrollLockState, ScrollLock, T
		if ScrollLockState = D
		{
			Click right
			sleep, 100
			MouseMove, 30, -50, 10, R
			Click
			sleep, 200
			send, {enter}
			sleep, 100
			MouseMove, -30, 50, 10, R
			Click right
			sleep, 100
			;MouseMove, 30, -50, 25, R
			Click
			;sleep, 200
			;send, {enter}
			;sleep, 100
			;MouseMove, -30, 50, 25, R
		}
		else
		{
			break
		}
	}
	return
}