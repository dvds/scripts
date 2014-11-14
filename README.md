# Scripts

### Overview

Scripts is a repository that assists with the automation of repeatable, lossless, DVD ripping.  It is written in pure bash and uses readily available GNU tooling only.

### Example

```sh
$ wget --quiet "https://raw.githubusercontent.com/dvds/scripts/master/Curious George - A Halloween Boo Fest.sh"
$ chmod u+x Curious\ George\ -\ A\ Halloween\ Boo\ Fest.sh
$ ./Curious\ George\ -\ A\ Halloween\ Boo\ Fest.sh
Curious George - A Halloween Boo Fest.iso
4,231,528,448 bytes
902b43cc628024b803dff706e23a7d44 (MD5)

Curious George - A Halloween Boo Fest.mkv
3,006,283,939 bytes
8d0eaa651664b2cdccab29d30bf8b964 (MD5)
Duration: 00:54:33.28, start: 0.000000, bitrate: 7347 kb/s
Video: mpeg2video (Main), yuv420p, 720x576 [PAR 64:45 DAR 16:9], 7200 kb/s, 50 fps, 50 tbr, 1k tbn, 50 tbc
(eng) Audio: ac3, 48000 Hz, 5.1, fltp, 384 kb/s

```

### License

[Apache License, Version 2.0]

[Apache License, Version 2.0]:https://raw.githubusercontent.com/dvds/scripts/master/LICENSE