See what qualities are available (very important)
Before downloading:
yt-dlp -F "URL"

Output example:
137 mp4 1920x1080 video only
136 mp4 1280x720  video only
140 m4a audio only
22  mp4 1280x720  video+audio

So you know:
137 → 1080p
136 → 720p

Then you can force exact format:
yt-dlp -f 137+140 "URL"

Method 1 (Best & Simple): Text file (cheat sheet)
# yt-dlp
yt-dlp -f "bestvideo[height=720]+bestaudio/best" "URL"
yt-dlp -f "bv*+ba/b" --merge-output-format mp4 --playlist-start 1 --playlist-end 6 "URL"
yt-dlp -f "bv*+ba/b" --merge-output-format mp4 "URL"
yt-dlp -x --audio-format mp3 "URL"
yt-dlp --playlist-start 5 --playlist-end 15 "URL"
==================================================
Method 2 (Pro): PowerShell aliases (real automation)
Store commands as custom functions.
Edit your PowerShell profile:
//IN powershell
notepad $PROFILE
//Add:
function y1080($url) {
    yt-dlp -f "bv*+ba/b" --merge-output-format mp4 $url
}
function ymp3($url) {
    yt-dlp -x --audio-format mp3 $url
}

//Restart PowerShell.
Now you can just type:
 y1080 "https://youtube.com/..."
or
ymp3 "URL"
This is next-level productivity.
==================================================
method 4
## Download best quality
yt-dlp -f "bv*+ba/b" --merge-output-format mp4 "URL"

## 1080p only
yt-dlp -f 137+140 "URL"

## MP3
yt-dlp -x --audio-format mp3 "URL"
