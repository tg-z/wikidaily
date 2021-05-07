# wikidaily

this repo makes use of a one-liner created by [everest pipkin](https://everest-pipkin.com/) in a [twitter thread](https://twitter.com/everestpipkin/status/1349274983651012609).

> been having some motivation troubles recently (god who hasn't) so i'm gonna pick a tiny personal project off my ideas list and see if i can get it working by morning. tonight - a lil bash script that emails me the summaries of 5 random wikipedia articles each morning
> 
> — everest ([@everestpipkin](https://twitter.com/everestpipkin)) [Jan 13, 2021](https://twitter.com/everestpipkin/status/1349274983651012609)
## setup

requirements: tree, jq, grep, git, curl

1) create your own repo by cloning:
```sh
# clone repo
$ git clone https://github.com/tg-z/wikidaily
 # enter repo
$ cd wikidaily
# remove example data
$ rm -rf docs/posts
# view help options
$ ./wikidaily
```

2) download install.sh file:
```sh
# enter directory to create wikidaily in
$ cd repos
$ curl "https://raw.githubusercontent.com/tg-z/wikidaily/main/install.sh" -o wikidaily/install.sh
$ chmod +x wikidaily/install.sh
$ ./wikidaily/install.sh
```

3) execute install.sh script
```sh
# warning: always check install script before executing it directly in your shell. confirm it does what you want it to and isn't malicious.
# go to repo you want wikidaily in
$ curl -s "https://raw.githubusercontent.com/tg-z/wikidaily/main/install.sh" | bash
```

__TODO__:
- [x] make a script to generate index file #done:2021-04-25
- [x] add more options to `get-html` script #done:2021-05-01
  - [x] list arg #done:2021-03-15
  - [x] help arg #done:2021-03-14
  - [x] update arg #done:2021-03-15
  - [x] index arg #done:2021-04-22
  - [x] push arg #done:2021-04-22
  - [x] full arg #done:2021-05-01
  - [x] version arg #done:2021-05-01
- [x] index styling options using `style.css` #done:2021-04-22
- [x] made compatible w github pages #done:2021-05-01
- [x] added default commit message to push arg #done:2021-05-01
- [x] add setup section to readme #done:2021-05-01
- [ ] add demo gif + examples
- [ ] make script usable anywhere (env vars for where `wikidaily` repo is located)
- [ ] fix `wikidaily` so it doesn't depend on `index` script
- [x] rename `get-html` to `wikidaily` #done:2021-05-01
- [x] create `install.sh` script #done:2021-05-07
