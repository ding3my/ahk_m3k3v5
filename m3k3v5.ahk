; m3k3
; 游戏分辨率默认为800*600，所以不用担心坐标兼容性
#If WinActive("M3K3")
	tip1_x := 632 ; tip 锦囊
	tip1_y := 260
	width_tip1_tip2 := 20
	lenght_tip1_tip6 := 93
	
	recruit(num)
	{
		Loop % num
		{
			i := A_Index-1 ;测试直接运算。间接运算书写繁琐。
			;msgbox %i%
			MouseGetPos, xtemp, ytemp
			MouseClick % "left", 105, 65 + 22*i
			Sleep, 1
			MouseClick % "left", 706, 292
		}
	}
	
	; 锦囊：暗度陈仓、严阵以待，测试通过
	\:: ; 锦囊=暗度陈仓
		loop 10{
			send % "{TAB down}{f1 down}{Backspace down}{TAB up}{f1 up}{Backspace up}"
			send % "ru4a.62" ; 44 严阵以待 2 暗度陈仓
			Send % "{enter down}{enter up}"
		}
	return
	':: ; 锦囊=严阵以待
		loop 10{
			send % "{TAB down}{f1 down}{Backspace down}{TAB up}{f1 up}{Backspace up}"
			send % "ru4a.644" ; 44 严阵以待 2 暗度陈仓
			Send % "{enter down}{enter up}"
		}
	return
	
	; 特产坊、单挑、攻城，测试通过
	e:: ; 退出特产坊
		MouseGetPos, xtemp, ytemp
		MouseClick % "left", 315, 260
		mousemove % xtemp, ytemp
	return
	d:: ; 防守单挑、野战
		MouseGetPos, xtemp, ytemp
		MouseClick % "left", 290, 375
		
		MouseClick % "left", 120, 95
		MouseClick % "left", 400, 325
		
		MouseClick % "left", 120, 120
		MouseClick % "left", 400, 380
		
		mousemove % xtemp, ytemp
	return
	c:: ; 进攻攻城
		MouseGetPos, xtemp, ytemp
		MouseClick % "left", 280, 360
		
		MouseClick % "left", 110, 90
		MouseClick % "left", 360, 315
		
		MouseClick % "left", 110, 115
		MouseClick % "left", 360, 350
		
		MouseClick % "left", 110, 140
		MouseClick % "left", 360, 380
		
		mousemove % xtemp, ytemp
	return
	
	; 骰子测试通过
	f:: ; 骰子1
		MouseGetPos, xtemp, ytemp
		MouseClick % left, 629, 435
		mousemove % xtemp, ytemp
	return
	r:: ; 骰子2
		MouseGetPos, xtemp, ytemp
		MouseClick % left, 681, 435
		mousemove % xtemp, ytemp
	return
	v:: ; 骰子3
		MouseGetPos, xtemp, ytemp
		MouseClick % left, 739, 435
		mousemove % xtemp, ytemp
	return

	; 锦囊，测试通过
	q:: ; 锦囊1
		MouseGetPos, xtemp, ytemp
		MouseClick % "left", tip1_x, tip1_y
		mousemove % xtemp, ytemp
	return
	a:: ; 锦囊3
		MouseGetPos, xtemp, ytemp
		MouseClick % "left", tip1_x, tip1_y + (width_tip1_tip2 * 2)
		mousemove % xtemp, ytemp
	return
	z:: ; 锦囊5
		MouseGetPos, xtemp, ytemp
		MouseClick % "left", tip1_x, tip1_y + (width_tip1_tip2 * 4)
		mousemove % xtemp, ytemp
	return
	w:: ; 锦囊6
		MouseGetPos, xtemp, ytemp
		MouseClick % "left", tip1_x + lenght_tip1_tip6 , tip1_y
		mousemove % xtemp, ytemp
	return
	s:: ; 锦囊8
		MouseGetPos, xtemp, ytemp
		MouseClick % "left", tip1_x + lenght_tip1_tip6 , tip1_y + (width_tip1_tip2 * 2)
		mousemove % xtemp, ytemp
	return
	x:: ; 锦囊10
		MouseGetPos, xtemp, ytemp
		MouseClick % "left", tip1_x + lenght_tip1_tip6 , tip1_y + (width_tip1_tip2 * 4)
		mousemove % xtemp, ytemp
	return	
	
	; 征兵，测试通过
	1:: ;征兵1
		recruit(1)
	return
	2::
		recruit(2)
	return
	3::
		recruit(3)
	return
	4::
		recruit(4)
	return
	5::
		recruit(5)
	return
	6::
		recruit(6)
	return
	7::
		recruit(7)
	return
	8::
		recruit(8)
	return
	9::
		recruit(9)
	return	
	0::
		recruit(10)
	return
#If