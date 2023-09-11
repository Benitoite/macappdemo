on open the_files
	repeat with i from 1 to the count of the_files
		tell application "Finder"
			set myFileName to POSIX path of item i of the_files
			set exten to name extension of item i of the_files
		end tell
		set orig_path to POSIX path of (((path to me as text) & "::") as alias) as string
		set my_path to orig_path & "icon.iconset"
		do shell script "mkdir " & my_path
		do shell script "sips -z 1024 1024 " & myFileName & " -s format png --out " & my_path & "/icon_512x512@2x.png"
		do shell script "sips -z 512 512 " & myFileName & " -s format png --out " & my_path & "/icon_512x512.png"
		do shell script "sips -z 512 512 " & myFileName & " -s format png --out " & my_path & "/icon_256x256@2x.png"
		do shell script "sips -z 256 256 " & myFileName & " -s format png --out " & my_path & "/icon_256x256.png"
		do shell script "sips -z 256 256 " & myFileName & " -s format png --out " & my_path & "/icon_128x128@2x.png"
		do shell script "sips -z 128 128 " & myFileName & " -s format png --out " & my_path & "/icon_128x128.png"
		do shell script "sips -z 64 64 " & myFileName & " -s format png --out " & my_path & "/icon_32x32@2x.png"
		do shell script "sips -z 32 32 " & myFileName & " -s format png --out " & my_path & "/icon_32x32.png"
		do shell script "sips -z 32 32 " & myFileName & " -s format png --out " & my_path & "/icon_16x16@2x.png"
		do shell script "sips -z 16 16 " & myFileName & " -s format png --out " & my_path & "/icon_16x16.png"
		do shell script "iconutil -c icns " & my_path
		do shell script "mv " & orig_path & "/icon.icns " & orig_path & "/$(basename " & myFileName & " ." & exten & ").icns"
		do shell script "rm -r " & my_path
	end repeat
end open
