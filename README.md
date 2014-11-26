# Scripts

## Overview

[Scripts][1] is a repository that assists with the automation of repeatable, lossless DVD ripping.  It is written in pure bash and uses readily available GNU tooling only. It sources DVD cover artwork to embed into the output container(s) from a sister repository [coverart][2], which contains resized scans of DVD covers at a resolution that is purposefully unsuitable for printing.

## Disclaimer

These scripts are **solely** for the purpose of legally backing up bought DVDs for private use, a process permitted under UK law [introduced on 1st October 2014][3]. I do not endorse these scripts (or derivations thereof) for any purpose that will infringe on copyright law.

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

## Troubleshooting

### You haven't put a DVD in your DVD-Rom drive 

When scripts detects this it'll report the following warning and terminate:

```sh
__get_dvd_device: No DVD devices found containing a DVD
```

### You haven't put the correct DVD in the DVD-Rom drive for the script that you are executing 

When scripts detects this it'll report the following warning and terminate:

```sh
check_dvd_volume_label: DVD label 'PANPIPE_MOODS_7' does not match expected volume label 'WIGGLES_YMMFLD_UK'
```

## License

[Apache License, Version 2.0][4]

  [1]: https://github.com/dvds/scripts
  [2]: https://github.com/dvds/coverart
  [3]: https://www.gov.uk/exceptions-to-copyright#personal-copying-for-private-use
  [4]: https://raw.githubusercontent.com/dvds/scripts/master/LICENSE