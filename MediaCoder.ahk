Loop {
	SetTitleMatchMode RegEx
	WinWait, ���Ӻ��Զ�����

	WinGetText, WindowText
	RegExMatch(WindowText, "��һ����������ɣ�(\d+)\s*([-\+])\s*(\d+)", Expression)

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
