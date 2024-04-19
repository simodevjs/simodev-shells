#-------------------------------------------------------Welcome Simo
#Path for auto exec scripts is /usr/local/bin
#db=databse TJR min
#K+abreviation de l'application
#abreviation d'une application doit etre TJR MAJ
#Somaire: Directories-Appluncher-OperationSystemsfiles-converter-ytbedl-réseautravail-Vscode-
#-------------------------------------------------------------Directories-------------------
alias zp='/Volumes/MAC\ 2/Projects-/./zp'
alias codf='cd /Users/••Sys/STCTS/V\>Coding-Tools'
alias proj='cd /Volumes/Tube/X-Documents\ sur\ D/X-Gdrive/-Projects-Folio-User'
alias py='python3'
alias pip='pip3'
alias mysqldb='/usr/local/mysql/bin/mysql -u root -p'
alias psqldb='psql --username=mohamedmahla'
alias psqlrestart='brew services restart postgresql@14'
alias psqlstop='brew services stop postgresql@14'
alias psqlinfo='brew services info postgresql@14'
alias sshalx='ssh 76bb7f369a65@76bb7f369a65.e8e265e1.alx-cod.online'
#-------------------------------------------------------------APP-------------------
alias KCT8='killall /Applications/CrazyTalk\ 8-Pipeline\ Trial.app/Contents/MacOS/CrazyTalk8PipelineTrial'
alias KFCP='nohup /Applications/Final\ Cut\ Pro.app/Contents/MacOS/./Final\ Cut\ Pro'
alias KCTA='killall /Applications/CrazyTalk\ Animator\ 3-Trial.app/Contents/MacOS/./CrazyTalkAnimator3PipelineTrial'
alias CTA='nohup /Applications/CrazyTalk\ Animator\ 3-Trial.app/Contents/MacOS/./CrazyTalkAnimator3PipelineTrial'
alias CT8='nohup /Applications/CrazyTalk\ 8-Pipeline\ Trial.app/Contents/MacOS/./CrazyTalk8PipelineTrial'
alias speedtest='curl -O http://speedtest.wdc01.softlayer.com/downloads/test10.zip > /dev/null'
alias VOLUME='/Applications/Volume-Scroll.app/Contents/MacOS/./Volume-Scroll' 
alias KDOCK='killall Dock'
alias WIFI='/Users/Shared/statusbarapp-OLD/StatusBarApp.app/Contents/MacOS/./StatusBarApp &'
alias wifi='/Users/Shared/statusbarapp-OLD/StatusBarApp.app/Contents/MacOS/./StatusBarApp &'
alias wifikill='killall StatusBarApp'
#-------------------------------------------------------------Databases----------------------
alias ydldb='vi ~/.config/youtube-dl/config'
#-------------------------------------------------------------Operation systemes--------
#ALX ALX
alias srv1='~/./0-use_a_private_key'
alias srv2='~/./1-use_a_private_key'
alias srvl='~/./2-use_a_private_key'

alias fix='xattr -cr'
alias aliadb='vim ~/.bash_profile'
alias lsa='ls -lR | wc -l'
alias cd..='cd ..'
alias umntube="diskutil unmount /dev/\$(diskutil list | grep 'Tube' | awk '{print \$NF}')"
alias mntube="diskutil mount /dev/\$(diskutil list | grep 'Tube' | awk '{print \$NF}')"
#remote
alias ssho='ssh root@192.168.1.9'
function scpo {
    scp -rp "$1" root@192.168.62.44:/mac
}
#funtcion

function fich {
     cd "$1"
     touch newfile.txt
}

function lst {
     ls -lR *."$1" | wc -l
} #lister le nombre d'un type

alias hide='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias nohide='defaults write com.apple.finder AppleShowAllFiles NO;killall Finder'
alias PING='ping'
#copier arboresence de dossier rsync -a /path/from/ /path/to/ --include \*/ --exclude \*

#-------------------------------------------------------------------Convertor--------------
#alias pandocc='pandoc -s -o "$(basename -s .docx "$1").pdf" --pdf-engine=xelatex "$1"'
#alias pandocc='pandoc -s -o "$(basename "$1" .docx).pdf" --pdf-engine=xelatex "$1"'
#alias pandocc='input="$1"; pandoc -s -o "$(basename "${input}" .docx).pdf" --pdf-engine=xelatex "${input}"'
function pandocc1() {
    input="$1"
    output="$(basename "${input}" .docx).pdf"
    pandoc -s -o "${output}" --pdf-engine=xelatex "${input}"
}
function pandocc() {
    if [ -z "$1" ]; then
        for input in $(find . -type f \( -name "*.docx" -o -name "*.doc" \)); do
            base_name="${input%.*}"
            output="${base_name}.pdf"

            pandoc -s -o "${output}" --pdf-engine=xelatex "${input}"
        done
    else
        input="$1"
        base_name="${input%.*}"
        output="${base_name}.pdf"

        pandoc -s -o "${output}" --pdf-engine=xelatex "${input}"
    fi
}
alias mp4flv='for f in *.flv;do ffmpeg -y -i "$f" -c:v copy  -c:a aac -b:a 256k -strict -2 -c:v libx264 -preset ultrafast "${f%flv}mp4";done'
alias mp4mkv='for f in *.mkv;do ffmpeg -y -i "$f" -c:v copy  -c:a aac -b:a 256k -strict -2 -c:v libx264 -preset ultrafast "${f%mkv}mp4";done'
alias mp4avi='for f in *.avi;do ffmpeg -y -i "$f" -c:v copy  -c:a aac -b:a 256k -strict -2 -c:v libx264 -preset ultrafast "${f%avi}mp4";done'
#alias mp4mkv='for f in *.mkv;do ffmpeg -y -i "$f" -c:v copy -c:a aac -b:a 256k -strict -2 "${f%mkv}mp4"' #To mp4
alias mp4mkv2='for f in *.mkv;do ffmpeg -y -i "$f" -c:v copy -c:a aac -b:a 256k -strict -2 "${f%mkv}mp4";if not errorlevel 1 && if exist "${f%mkv}mp4" del /q "$f";done'
alias mp4mkv3='for f in *.mkv;do ffmpeg -y -i "$f" -c:v copy  -c:a aac -b:a 256k -strict -2 -c:v libx264 -preset ultrafast "${f%mkv}mp4";rm "$f";done'
#alias mp4reduce='for f in *.mp4;do ffmpeg -y -i "$f" -vcodec libx264 -crf 28 "${f%mp4}-new.mp4";done'
#alias mp4reduce='for f in *.mp4; do ffmpeg -y -i "$f" -c:v libx264 -crf 23 -preset medium -c:a aac -b:a 128k "${f%.mp4}_comp.mp4"; done'
#alias mp4reduce='for f in *.mp4; do ffmpeg -y -i "$f" -c:v libx264 -crf 28 -preset medium -c:a aac -b:a 128k "${f%.*}-new.mp4"; done'
alias mp4reduce='for f in *.mp4; do if [[ "$f" != *"_new.mp4" ]]; then ffmpeg -y -i "$f" -c:v libx264 -crf 28 -preset medium -c:a aac -b:a 128k "${f%.*}-new.mp4" && rm "$f"; fi; done'


mp4reduce1() {
  for f in "$1"; do
    ffmpeg -y -i "$f" -c:v libx264 -crf 28 -preset medium -c:a aac -b:a 128k "${f%.*}_new.mp4"
  done
}
#avec suppresioon
alias mp4mov='for f in *.mov;do ffmpeg -y -i "$f" -c:v copy  -c:a aac -b:a 256k -strict -2 -c:v libx264 -preset ultrafast "${f%mov}mp4"";done'
alias mp4webm='for f in *.webm;do ffmpeg -y -i "$f" -c:v copy  -c:a aac -b:a 256k -strict -2 -c:v libx264 -preset ultrafast "${f%webm}mp4";rm "$f";done'
#webm format
#ffmpeg -i filename.mp4 filename.mp3
#ffmpeg -i file.mkv -ss 20 -to 40 -c copy file-2.mkv

function cutto {
 ffmpeg -i "$1" -ss $2 -to $3 -c copy "CUT$1"
}
#syntaxe du temps 55:40s
alias mp3mp4='for f in *.mp4;do ffmpeg -i "$f" "${f%mp4}mp3";done' #rm "$f";done'
alias mp3mkv='for y in *.mkv;do ffmpeg -i "$y" "${y%mkv}mp3";done' #rm "$y";done'
alias mp3webm='for y in *.webm;do ffmpeg -i "$y" "${y%webm}mp3";done' #rm "$y";done'
alias mp3m4a='for y in *.m4a;do ffmpeg -i "$y" "${y%m4a}mp3";done'
#--------------------------------------------------------------------youtube-dl 
alias ydldb='vi ~/.config/youtube-dl/config'
#alias a='youtube-dl -cif 140 ' #audio
#alias chan='youtube-dl -ci'
alias y='py /Users/mohamedmahla/Downloads/yt-dlp-2023.02.17.334/yt-dlp'
alias yy='py /Users/mohamedmahla/Downloads/yt-dlp-2023.02.17.334/yt-dlp -f 609 '
alias yb='py /Users/mohamedmahla/Downloads/yt-dlp-2023.02.17.334/yt-dlp -cif "bestvideo[height<1280]/mp4" ' #normal
#alias y='youtube-dl -cif "bestvideo[ext=mp4,height<=720]+bestaudio[ext=m4a]/mp4" ' #normal
#alias m='youtube-dl -cio "~/Music/z---YYtbe\clip/%(uploader)s/%(title)s.%(ext)s" -f "bestvideo[ext=mp4,height<=720]+bestaudio[ext=m4a]/mp4" ' #music de youtube tendence actuel
alias m='youtube-dl -cio "~/Music/z---YYtbe\clip/%(uploader)s-%(title)s.%(ext)s" -f "bestvideo[ext=mp4,height<=720]+bestaudio[ext=m4a]/mp4" ' #music de youtube tendence actuel
alias ma='youtube-dl -cif 140 -o "~/Music/z---Mixmp3/%(uploader)s-%(title)s.%(ext)s" '

alias b='youtube-dl -cif "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4" ' #best
alias F='/Users/mohamedmahla/Downloads/yt-dlp-2023.02.17.334/yt-dlp -ciF' #show formats
#alias F='youtube-dl -ciF' #show formats
alias f='youtube-dl -cif' # specify format
alias fff='youtube-dl -cif 22' #mp4 1280f720
alias ff='youtube-dl -cif 18 ' #mp4 640f360

#function youtube-dl
function go {
    y -cio "~/Desktop/"$1"/%(title)s.%(ext)s" $2 $3  $4 "$5" "$6" "$7" "$8" "$9" "$10" "$11" "$12" "$13" "$14" "$15" "$16" "$17"
}

function g {
    y "$1" "$2" "$3"  "$4" "$5" "$6" "$7" "$8" "$9" "$10" "$11" "$12" "$13" "$14" "$15" "$16" "$17" "$18" "$19" "$20"
}

function gofff {
    fff -cio "~/Desktop/"$1"/%(uploader)s/%(title)s.%(ext)s" "$2" "$3"  "$4" "$5" "$6"
}

function goff {
    ff -cio "~/Desktop/"$1"/%(uploader)s/%(title)s.%(ext)s" "$2" "$3"  "$4" "$5" "$6"
}

function goa {
    a -cio "~/Desktop/"$1"/%(uploader)s/%(title)s.%(ext)s" "$2" "$3"  "$4" "$5" "$6"
}

function gof {
    youtube-dl -cif $1 -o "~/Desktop/"$2"/%(uploader)s/%(title)s.%(ext)s" "$3"  "$4" "$5" "$6" "$7"
}


######## Réseau & travail #########
alias iproute='netstat -nr'
alias fdp='ping 172.31.46.1'

function rct {
   #npm init react-app $1
   npx create-react-app $1
}


##
# Your previous /Users/mohamedmahla/.bash_profile file was backed up as /Users/mohamedmahla/.bash_profile.macports-saved_2019-10-13_at_14:58:43
##

# MacPorts Installer addition on 2019-10-13_at_14:58:43: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.10
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH
PATH="/Library/PostgreSQL/14/bin:${PATH}"
export PATH
export BASH_SILENCE_DEPRECATION_WARNING=1

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/Users/mohamedmahla/.micromamba/bin/micromamba";
export MAMBA_ROOT_PREFIX="/Users/mohamedmahla/micromamba";
__mamba_setup="$('/Users/mohamedmahla/.micromamba/bin/micromamba' shell hook --shell bash --prefix '/Users/mohamedmahla/micromamba' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "/Users/mohamedmahla/micromamba/etc/profile.d/micromamba.sh" ]; then
        . "/Users/mohamedmahla/micromamba/etc/profile.d/micromamba.sh"
    else
        export  PATH="/Users/mohamedmahla/micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mohamedmahla/micromamba/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mohamedmahla/micromamba/etc/profile.d/conda.sh" ]; then
        . "/Users/mohamedmahla/micromamba/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mohamedmahla/micromamba/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Setting PATH for Python 3.9
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH

export PYTHONPATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export LD_LIBRARY_PATH="/usr/local/lib"
