# Scripts

## Overview

Scripts is a repository that assists with the automation of repeatable, lossless DVD ripping.  It is written in pure bash and uses readily available GNU tooling only.

## Disclaimer

These scripts are **solely** for the purpose of legally backing up bought DVDs for private use, a process permitted under UK law [introduced on 1st October 2014][1]. I do not endorse these scripts (or derivations thereof) for any purpose that will infringe on copyright law.

If you do not live in the UK then please check the applicable laws in your local jurisdiction to ensure that your use of these scripts is in compliance with your local laws.

## Example

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

## License

[Apache License, Version 2.0][2]

  [1]: https://www.gov.uk/exceptions-to-copyright#personal-copying-for-private-use
  [2]: https://raw.githubusercontent.com/dvds/scripts/master/LICENSE