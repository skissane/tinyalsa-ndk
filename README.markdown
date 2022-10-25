tinyalsa-ndk
===========

This is a slightly modified ['tinyalsa'](https://github.com/tinyalsa/tinyalsa) lib to make it compile using android-ndk - especially the tinymix utility.

- This repo also holds the precompiled binaries (compiled with ndk) of tinymix and related utils in the libs/arm64-v8a/ directory.

How to compile
--------------

(Requires docker, tested on Ubuntu)

<pre>
./build.sh
</pre>

Usage example
------------

The below example is from a rooted Samsung S22 phone.

<pre>
kasidit@kasidit-thinkpad:/data/tinyalsa-ndk$ cd libs/arm64-v8a/
kasidit@kasidit-thinkpad:/data/tinyalsa-ndk/libs/arm64-v8a$ ls
libtinyalsa.so  tinycap  tinymix  tinypcminfo  tinyplay
kasidit@kasidit-thinkpad:/data/tinyalsa-ndk/libs/arm64-v8a$ adb push tinymix /sdcard
* daemon not running; starting now at tcp:5037
* daemon started successfully
tinymix: 1 file pushed, 0 skipped. 30.9 MB/s (22048 bytes in 0.001s)
kasidit@kasidit-thinkpad:/data/tinyalsa-ndk/libs/arm64-v8a$ adb shell
r0q:/ $ su
su
r0q:/ # cd /data
cd /data
r0q:/data # cp /sdcard/tinymix .
cp /sdcard/tinymix .
r0q:/data # chmod 777 tinymix
chmod 777 tinymix
r0q:/data # ./tinymix
./tinymix
Mixer name: 'Loopback'
Number of controls: 96
ctl	type	num	name                                     value

0	INT	1	PCM Rate Shift 100000                    100000
1	BOOL	1	PCM Notify                               Off
2	BOOL	1	PCM Slave Active                         Off
3	INT	1	PCM Slave Format                         2
4	INT	1	PCM Slave Rate                           48000
5	INT	1	PCM Slave Channels                       2
6	INT	1	PCM Rate Shift 100000                    100000
7	BOOL	1	PCM Notify                               Off
8	BOOL	1	PCM Slave Active                         Off
9	INT	1	PCM Slave Format                         2
10	INT	1	PCM Slave Rate                           48000
11	INT	1	PCM Slave Channels                       2
12	INT	1	PCM Rate Shift 100000                    100000
13	BOOL	1	PCM Notify                               Off
14	BOOL	1	PCM Slave Active                         Off
15	INT	1	PCM Slave Format                         2
16	INT	1	PCM Slave Rate                           48000
17	INT	1	PCM Slave Channels                       2
18	INT	1	PCM Rate Shift 100000                    100000
19	BOOL	1	PCM Notify                               Off
20	BOOL	1	PCM Slave Active                         Off
21	INT	1	PCM Slave Format                         2
22	INT	1	PCM Slave Rate                           48000
23	INT	1	PCM Slave Channels                       2
24	INT	1	PCM Rate Shift 100000                    100000
25	BOOL	1	PCM Notify                               Off
26	BOOL	1	PCM Slave Active                         Off
27	INT	1	PCM Slave Format                         2
28	INT	1	PCM Slave Rate                           48000
29	INT	1	PCM Slave Channels                       2
30	INT	1	PCM Rate Shift 100000                    100000
31	BOOL	1	PCM Notify                               Off
32	BOOL	1	PCM Slave Active                         Off
33	INT	1	PCM Slave Format                         2
34	INT	1	PCM Slave Rate                           48000
35	INT	1	PCM Slave Channels                       2
36	INT	1	PCM Rate Shift 100000                    100000
37	BOOL	1	PCM Notify                               Off
38	BOOL	1	PCM Slave Active                         Off
39	INT	1	PCM Slave Format                         2
40	INT	1	PCM Slave Rate                           48000
41	INT	1	PCM Slave Channels                       2
42	INT	1	PCM Rate Shift 100000                    100000
43	BOOL	1	PCM Notify                               Off
44	BOOL	1	PCM Slave Active                         Off
45	INT	1	PCM Slave Format                         2
46	INT	1	PCM Slave Rate                           48000
47	INT	1	PCM Slave Channels                       2
48	INT	1	PCM Rate Shift 100000                    100000
49	BOOL	1	PCM Notify                               Off
50	BOOL	1	PCM Slave Active                         Off
51	INT	1	PCM Slave Format                         2
52	INT	1	PCM Slave Rate                           48000
53	INT	1	PCM Slave Channels                       2
54	INT	1	PCM Rate Shift 100000                    100000
55	BOOL	1	PCM Notify                               Off
56	BOOL	1	PCM Slave Active                         Off
57	INT	1	PCM Slave Format                         2
58	INT	1	PCM Slave Rate                           48000
59	INT	1	PCM Slave Channels                       2
60	INT	1	PCM Rate Shift 100000                    100000
61	BOOL	1	PCM Notify                               Off
62	BOOL	1	PCM Slave Active                         Off
63	INT	1	PCM Slave Format                         2
64	INT	1	PCM Slave Rate                           48000
65	INT	1	PCM Slave Channels                       2
66	INT	1	PCM Rate Shift 100000                    100000
67	BOOL	1	PCM Notify                               Off
68	BOOL	1	PCM Slave Active                         Off
69	INT	1	PCM Slave Format                         2
70	INT	1	PCM Slave Rate                           48000
71	INT	1	PCM Slave Channels                       2
72	INT	1	PCM Rate Shift 100000                    100000
73	BOOL	1	PCM Notify                               Off
74	BOOL	1	PCM Slave Active                         Off
75	INT	1	PCM Slave Format                         2
76	INT	1	PCM Slave Rate                           48000
77	INT	1	PCM Slave Channels                       2
78	INT	1	PCM Rate Shift 100000                    100000
79	BOOL	1	PCM Notify                               Off
80	BOOL	1	PCM Slave Active                         Off
81	INT	1	PCM Slave Format                         2
82	INT	1	PCM Slave Rate                           48000
83	INT	1	PCM Slave Channels                       2
84	INT	1	PCM Rate Shift 100000                    100000
85	BOOL	1	PCM Notify                               Off
86	BOOL	1	PCM Slave Active                         Off
87	INT	1	PCM Slave Format                         2
88	INT	1	PCM Slave Rate                           48000
89	INT	1	PCM Slave Channels                       2
90	INT	1	PCM Rate Shift 100000                    100000
91	BOOL	1	PCM Notify                               Off
92	BOOL	1	PCM Slave Active                         Off
93	INT	1	PCM Slave Format                         2
94	INT	1	PCM Slave Rate                           48000
95	INT	1	PCM Slave Channels                       2
r0q:/data # 
</pre>