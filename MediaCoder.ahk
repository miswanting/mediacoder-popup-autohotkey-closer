Loop {
	SetTitleMatchMode RegEx
	WinWait, 分钟后自动继续

	WinGetText, WindowText
	RegExMatch(WindowText, "做一个简单算术题吧：(\d+)\s*([-\+])\s*(\d+)", Expression)

	if(Expression2 = "-")
		Result := Expression1 - Expression3
	else if (Expression2 = "+")
		Result := Expression1 + Expression3
	else
	{
		MsgBox, Unknown operator ""%Expression2%""., 16, Error
		return
	}

	ControlSetText, Edit2, %Result%
	ControlClick, Button2
}
