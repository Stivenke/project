; 退出前关闭 SSH Key 验证程序 pageant.exe
${SegmentFile}
${SegmentPostPrimary}
	; 检查并关闭 pageant.exe
	killer::IsProcessRunning "pageant.exe"
	Pop $R0
	StrCmp $R0 1 0 +3
	killer::KillProcess "pageant.exe"
	Goto -4

	; 检查并关闭 plink.exe
	killer::IsProcessRunning "plink.exe"
	Pop $R0
	StrCmp $R0 1 0 +3
	killer::KillProcess "plink.exe"
	Goto -4

	; 检查并关闭 puttygen.exe
	killer::IsProcessRunning "puttygen.exe"
	Pop $R0
	StrCmp $R0 1 0 +3
	killer::KillProcess "puttygen.exe"
	Goto -4
!macroend
${SegmentUnload}
	; 在退出前检查临时文件 .viminfo 并删除。
	${if} ${FileExists} "$PROFILE\.viminfo"
		Delete "$PROFILE\.viminfo"
	${EndIf}
!macroend