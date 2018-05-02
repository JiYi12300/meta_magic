#Include WinClipAPI.ahk
#Include WinClip.ahk 
::ti::intitle:
::startup::Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp return


#`::winset,AlwaysOnTop,,A


!m::
ifWinExist [未命名] - GVIM
{
	WinActivate
	Winmove [未命名] - GVIM,,1403, 66,400,500
	Winset AlwaysOnTop,,A
	;Send {windows}{`}
	;winset,AlwaysOnTop,,A
}
else
{
	
	Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vim 8.0\gVim.lnk
	Winmove [未命名] - GVIM,,1403, 50,350,500
	Winset AlwaysOnTop,,A
	;Send {win}{`}
	;winset,AlwaysOnTop,,A 
	evernoteSokit("<table width='100%' color='purple'><tr><td></td></tr>","</table>")
}
return

evernoteSokit(fir,end){
	Send ^c
	sleep,100
	;如果有t的话,就会复制之后在执行命令,其实很容易理解,就是看到fir和end中间是t,也就是把文字放在标签之间,相当于text的作用
	t :=WinClip.GetText()
	con=%fir%%t%%end%
	WinClip.Clear()
	WinClip.setHTML(con)
	Send ^v
	Return
}


;!h::evernoteSokit("<blockquote><p>","</p></blockquote>")

!`::evernoteSokit("<table width='100%'><tr><td>","</td></tr></table>")

!e::WinClose Everything


^+z::Send {Home}
^+x::Send {End}
!2::Send !{Enter}	;查看属性
!3::Send !{F4}	;关闭应用
!4::Send +#{F} ^q ;快速搜索印象笔记

!x::WinMinimize A ;窗口最小化
!z::WinMaximize A ;窗口最大化
!d::WinRestore A ;窗口恢复WinRestore

Send +#{f} ^{q}
;Send ^{q}
Return
