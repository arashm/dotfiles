function fast-dl -d 'make youtube-dl to use axel as downloader'
  youtube-dl --external-downloader axel --external-downloader-args "-n 10 -a" $argv
end
