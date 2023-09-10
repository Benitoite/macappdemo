set myText to "Hello, world."
set orig_path to POSIX path of (((path to me as text) & "::") as alias) as string
display dialog myText with icon POSIX file (orig_path & "meo.png")
delay 1
