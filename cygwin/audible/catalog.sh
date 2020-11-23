while read line; do if [[ $line == "Finished" ]]; then read book; echo "$book"; fi; if [[ $line == "Download" ]]; then read book;  echo "${book/ audiobook cover art/}"; fi; done < books.txt
