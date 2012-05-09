#remotepb

remotepb is a small vim script to share your pasteboard from your server to your mac.

##Configure
in your vimrc add this:

	let g:remotepb_server = "user@server"

##Usage

###Copy

yank something into your vim register (y) and then:
	
	:RemotePBCopy

you'll now have that text on your mac

###Paste

Put some text into your mac clipboard, then run this command

	:RemotePBPaste

you'll now have that text in your vim register, which you can paste by using p.
	

