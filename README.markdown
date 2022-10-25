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
Mixer name: 'waipio-mtp-snd-card'
Number of controls: 391
ctl	type	num	name                                     value

0	BOOL	1	TX_AIF1_CAP Mixer DEC0                   Off
1	BOOL	1	TX_AIF1_CAP Mixer DEC1                   Off
2	BOOL	1	TX_AIF1_CAP Mixer DEC2                   Off
3	BOOL	1	TX_AIF1_CAP Mixer DEC3                   Off
4	BOOL	1	TX_AIF1_CAP Mixer DEC4                   Off
5	BOOL	1	TX_AIF1_CAP Mixer DEC5                   Off
6	BOOL	1	TX_AIF1_CAP Mixer DEC6                   Off
7	BOOL	1	TX_AIF1_CAP Mixer DEC7                   Off
8	BOOL	1	TX_AIF2_CAP Mixer DEC0                   Off
9	BOOL	1	TX_AIF2_CAP Mixer DEC1                   Off
10	BOOL	1	TX_AIF2_CAP Mixer DEC2                   Off
11	BOOL	1	TX_AIF2_CAP Mixer DEC3                   Off
12	BOOL	1	TX_AIF2_CAP Mixer DEC4                   Off
13	BOOL	1	TX_AIF2_CAP Mixer DEC5                   Off
14	BOOL	1	TX_AIF2_CAP Mixer DEC6                   Off
15	BOOL	1	TX_AIF2_CAP Mixer DEC7                   Off
16	BOOL	1	TX_AIF3_CAP Mixer DEC0                   Off
17	BOOL	1	TX_AIF3_CAP Mixer DEC1                   Off
18	BOOL	1	TX_AIF3_CAP Mixer DEC2                   Off
19	BOOL	1	TX_AIF3_CAP Mixer DEC3                   Off
20	BOOL	1	TX_AIF3_CAP Mixer DEC4                   Off
21	BOOL	1	TX_AIF3_CAP Mixer DEC5                   Off
22	BOOL	1	TX_AIF3_CAP Mixer DEC6                   Off
23	BOOL	1	TX_AIF3_CAP Mixer DEC7                   Off
24	ENUM	1	TX DMIC MUX0                             ZERO
25	ENUM	1	TX DMIC MUX1                             ZERO
26	ENUM	1	TX DMIC MUX2                             ZERO
27	ENUM	1	TX DMIC MUX3                             ZERO
28	ENUM	1	TX DMIC MUX4                             ZERO
29	ENUM	1	TX DMIC MUX5                             ZERO
30	ENUM	1	TX DMIC MUX6                             ZERO
31	ENUM	1	TX DMIC MUX7                             ZERO
32	ENUM	1	TX SMIC MUX0                             ZERO
33	ENUM	1	TX SMIC MUX1                             ZERO
34	ENUM	1	TX SMIC MUX2                             ZERO
35	ENUM	1	TX SMIC MUX3                             ZERO
36	ENUM	1	TX SMIC MUX4                             ZERO
37	ENUM	1	TX SMIC MUX5                             ZERO
38	ENUM	1	TX SMIC MUX6                             ZERO
39	ENUM	1	TX SMIC MUX7                             ZERO
40	ENUM	1	TX DEC0 MUX                              MSM_DMIC
41	ENUM	1	TX DEC1 MUX                              MSM_DMIC
42	ENUM	1	TX DEC2 MUX                              MSM_DMIC
43	ENUM	1	TX DEC3 MUX                              MSM_DMIC
44	ENUM	1	TX DEC4 MUX                              MSM_DMIC
45	ENUM	1	TX DEC5 MUX                              MSM_DMIC
46	ENUM	1	TX DEC6 MUX                              MSM_DMIC
47	ENUM	1	TX DEC7 MUX                              MSM_DMIC
48	INT	1	TX_DEC0 Volume                           101
49	INT	1	TX_DEC1 Volume                           101
50	INT	1	TX_DEC2 Volume                           101
51	INT	1	TX_DEC3 Volume                           101
52	INT	1	TX_DEC4 Volume                           84
53	INT	1	TX_DEC5 Volume                           84
54	INT	1	TX_DEC6 Volume                           84
55	INT	1	TX_DEC7 Volume                           84
56	ENUM	1	DEC0 MODE                                ADC_DEFAULT
57	ENUM	1	DEC1 MODE                                ADC_DEFAULT
58	ENUM	1	DEC2 MODE                                ADC_DEFAULT
59	ENUM	1	DEC3 MODE                                ADC_DEFAULT
60	ENUM	1	DEC4 MODE                                ADC_DEFAULT
61	ENUM	1	DEC5 MODE                                ADC_DEFAULT
62	ENUM	1	DEC6 MODE                                ADC_DEFAULT
63	ENUM	1	DEC7 MODE                                ADC_DEFAULT
64	ENUM	1	TX0 HPF cut off                          CF_NEG_3DB_4HZ
65	ENUM	1	TX1 HPF cut off                          CF_NEG_3DB_4HZ
66	ENUM	1	TX2 HPF cut off                          CF_NEG_3DB_4HZ
67	ENUM	1	TX3 HPF cut off                          CF_NEG_3DB_4HZ
68	ENUM	1	TX4 HPF cut off                          CF_NEG_3DB_4HZ
69	ENUM	1	TX5 HPF cut off                          CF_NEG_3DB_4HZ
70	ENUM	1	TX6 HPF cut off                          CF_NEG_3DB_4HZ
71	ENUM	1	TX7 HPF cut off                          CF_NEG_3DB_4HZ
72	BOOL	1	DEC0_BCS Switch                          Off
73	BOOL	1	TX_SWR_DMIC Enable                       Off
74	ENUM	1	BCS Channel                              CH0
75	ENUM	1	BCS CH_SEL                               SWR_MIC6
76	ENUM	1	DMIC_RATE OVERRIDE                       DISABLED
77	ENUM	1	RX_MACRO RX0 MUX                         ZERO
78	ENUM	1	RX_MACRO RX1 MUX                         ZERO
79	ENUM	1	RX_MACRO RX2 MUX                         ZERO
80	ENUM	1	RX_MACRO RX3 MUX                         ZERO
81	ENUM	1	RX_MACRO RX4 MUX                         ZERO
82	ENUM	1	RX_MACRO RX5 MUX                         ZERO
83	ENUM	1	IIR0 INP0 MUX                            ZERO
84	ENUM	1	IIR0 INP1 MUX                            ZERO
85	ENUM	1	IIR0 INP2 MUX                            ZERO
86	ENUM	1	IIR0 INP3 MUX                            ZERO
87	ENUM	1	IIR1 INP0 MUX                            ZERO
88	ENUM	1	IIR1 INP1 MUX                            ZERO
89	ENUM	1	IIR1 INP2 MUX                            ZERO
90	ENUM	1	IIR1 INP3 MUX                            ZERO
91	ENUM	1	RX MIX TX0 MUX                           ZERO
92	ENUM	1	RX MIX TX1 MUX                           ZERO
93	ENUM	1	RX MIX TX2 MUX                           ZERO
94	ENUM	1	RX INT0 DEM MUX                          NORMAL_DSM_OUT
95	ENUM	1	RX INT1 DEM MUX                          NORMAL_DSM_OUT
96	ENUM	1	RX INT0_2 MUX                            ZERO
97	ENUM	1	RX INT1_2 MUX                            ZERO
98	ENUM	1	RX INT2_2 MUX                            ZERO
99	ENUM	1	RX INT0_1 MIX1 INP0                      ZERO
100	ENUM	1	RX INT0_1 MIX1 INP1                      ZERO
101	ENUM	1	RX INT0_1 MIX1 INP2                      ZERO
102	ENUM	1	RX INT1_1 MIX1 INP0                      ZERO
103	ENUM	1	RX INT1_1 MIX1 INP1                      ZERO
104	ENUM	1	RX INT1_1 MIX1 INP2                      ZERO
105	ENUM	1	RX INT2_1 MIX1 INP0                      ZERO
106	ENUM	1	RX INT2_1 MIX1 INP1                      ZERO
107	ENUM	1	RX INT2_1 MIX1 INP2                      ZERO
108	ENUM	1	RX INT0_1 INTERP                         ZERO
109	ENUM	1	RX INT1_1 INTERP                         ZERO
110	ENUM	1	RX INT2_1 INTERP                         ZERO
111	ENUM	1	RX INT0_2 INTERP                         ZERO
112	ENUM	1	RX INT1_2 INTERP                         ZERO
113	ENUM	1	RX INT2_2 INTERP                         ZERO
114	ENUM	1	RX INT0 MIX2 INP                         ZERO
115	ENUM	1	RX INT1 MIX2 INP                         ZERO
116	ENUM	1	RX INT2 MIX2 INP                         ZERO
117	BOOL	1	RX INT2_1 VBAT RX AUX VBAT Enable        Off
118	INT	1	RX_RX0 Digital Volume                    84
119	INT	1	RX_RX1 Digital Volume                    84
120	INT	1	RX_RX2 Digital Volume                    84
121	INT	1	RX_RX0 Mix Digital Volume                84
122	INT	1	RX_RX1 Mix Digital Volume                84
123	INT	1	RX_RX2 Mix Digital Volume                84
124	BOOL	1	RX_COMP1 Switch                          Off
125	BOOL	1	RX_COMP2 Switch                          Off
126	INT	1	RX0 FIR Coeff Num                        0
127	INT	1	RX1 FIR Coeff Num                        0
128	ENUM	1	HPH Idle Detect                          OFF
129	ENUM	1	RX_EAR Mode                              OFF
130	ENUM	1	RX_FIR Filter                            OFF
131	ENUM	1	RX_HPH HD2 Mode                          OFF
132	ENUM	1	RX_HPH_PWR_MODE                          ULP
133	ENUM	1	RX_GSM mode Enable                       OFF
134	BOOL	1	RX_Softclip Enable                       Off
135	BOOL	1	AUX_HPF Enable                           On
136	INT	1	IIR0 INP0 Volume                         54
137	INT	1	IIR0 INP1 Volume                         84
138	INT	1	IIR0 INP2 Volume                         84
139	INT	1	IIR0 INP3 Volume                         84
140	INT	1	IIR1 INP0 Volume                         84
141	INT	1	IIR1 INP1 Volume                         84
142	INT	1	IIR1 INP2 Volume                         84
143	INT	1	IIR1 INP3 Volume                         84
144	BOOL	1	IIR0 Enable Band1                        Off
145	BOOL	1	IIR0 Enable Band2                        Off
146	BOOL	1	IIR0 Enable Band3                        Off
147	BOOL	1	IIR0 Enable Band4                        Off
148	BOOL	1	IIR0 Enable Band5                        Off
149	BOOL	1	IIR1 Enable Band1                        Off
150	BOOL	1	IIR1 Enable Band2                        Off
151	BOOL	1	IIR1 Enable Band3                        Off
152	BOOL	1	IIR1 Enable Band4                        Off
153	BOOL	1	IIR1 Enable Band5                        Off
154	BYTE	20	IIR0 Band1                                00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
155	BYTE	20	IIR0 Band2                                00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
156	BYTE	20	IIR0 Band3                                00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
157	BYTE	20	IIR0 Band4                                00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
158	BYTE	20	IIR0 Band5                                00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
159	BYTE	20	IIR1 Band1                                00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
160	BYTE	20	IIR1 Band2                                00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
161	BYTE	20	IIR1 Band3                                00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
162	BYTE	20	IIR1 Band4                                00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
163	BYTE	20	IIR1 Band5                                00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
164	BYTE	404	RX0 FIR Coeff Group0                      00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
165	BYTE	404	RX0 FIR Coeff Group1                      00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
166	BYTE	404	RX1 FIR Coeff Group0                      00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
167	BYTE	404	RX1 FIR Coeff Group1                      00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
168	BOOL	1	VA_AIF1_CAP Mixer DEC0                   Off
169	BOOL	1	VA_AIF1_CAP Mixer DEC1                   Off
170	BOOL	1	VA_AIF1_CAP Mixer DEC2                   Off
171	BOOL	1	VA_AIF1_CAP Mixer DEC3                   Off
172	BOOL	1	VA_AIF2_CAP Mixer DEC0                   Off
173	BOOL	1	VA_AIF2_CAP Mixer DEC1                   Off
174	BOOL	1	VA_AIF2_CAP Mixer DEC2                   Off
175	BOOL	1	VA_AIF2_CAP Mixer DEC3                   Off
176	BOOL	1	VA_AIF3_CAP Mixer DEC0                   Off
177	BOOL	1	VA_AIF3_CAP Mixer DEC1                   Off
178	BOOL	1	VA_AIF3_CAP Mixer DEC2                   Off
179	BOOL	1	VA_AIF3_CAP Mixer DEC3                   Off
180	ENUM	1	VA DMIC MUX0                             ZERO
181	ENUM	1	VA DMIC MUX1                             ZERO
182	ENUM	1	VA DMIC MUX2                             ZERO
183	ENUM	1	VA DMIC MUX3                             ZERO
184	ENUM	1	VA SMIC MUX0                             ZERO
185	ENUM	1	VA SMIC MUX1                             ZERO
186	ENUM	1	VA SMIC MUX2                             ZERO
187	ENUM	1	VA SMIC MUX3                             ZERO
188	ENUM	1	VA DEC0 MUX                              MSM_DMIC
189	ENUM	1	VA DEC1 MUX                              MSM_DMIC
190	ENUM	1	VA DEC2 MUX                              MSM_DMIC
191	ENUM	1	VA DEC3 MUX                              MSM_DMIC
192	INT	1	VA_DEC0 Volume                           84
193	INT	1	VA_DEC1 Volume                           84
194	INT	1	VA_DEC2 Volume                           84
195	INT	1	VA_DEC3 Volume                           84
196	BOOL	1	LPI Enable                               Off
197	BOOL	1	VA_SWR_DMIC Enable                       Off
198	ENUM	1	VA_DEC0 MODE                             ADC_DEFAULT
199	ENUM	1	VA_DEC1 MODE                             ADC_DEFAULT
200	ENUM	1	VA_DEC2 MODE                             ADC_DEFAULT
201	ENUM	1	VA_DEC3 MODE                             ADC_DEFAULT
202	INT	1	A2H Tuning                               0
203	INT	1	A2H Volume                               8388607
204	BOOL	1	SVC for streaming data                   Off
205	BOOL	1	Invert streaming data                    Off
206	INT	1	I2S VMON                                 0
207	BOOL	1	DSP Bypass                               Off
208	INT	1	A2H Delay                                20
209	ENUM	1	Right DSP1 Firmware                      Protection
210	INT	1	Right Digital PCM Volume                 0
211	ENUM	1	Right Invert PCM                         Disabled
212	INT	1	Right AMP PCM Gain                       0
213	INT	1	Right ASPTX1 Slot Position               1
214	INT	1	Right ASPTX2 Slot Position               3
215	INT	1	Right ASPTX3 Slot Position               2
216	INT	1	Right ASPTX4 Slot Position               3
217	INT	1	Right ASPRX1 Slot Position               1
218	INT	1	Right ASPRX2 Slot Position               0
219	ENUM	1	Right VPBR Release Rate                  5ms
220	ENUM	1	Right VPBR Wait                          10ms
221	ENUM	1	Right VPBR Attack Rate                   2.5us
222	ENUM	1	Right VPBR Attack Volume                 1dB
223	INT	1	Right VPBR Max Attenuation               2
224	ENUM	1	Right VPBR Threshold 1                   2.687
225	ENUM	1	Right VPBR Enable                        Enabled
226	ENUM	1	Right PCM Soft Ramp                      .5ms
227	ENUM	1	Right AMP Mute                           Unmuted
228	ENUM	1	Right Boost Enable                       Disabled
229	BOOL	1	Right DSP Booted                         On
230	BOOL	1	Right DSP1 Preload Switch                On
231	ENUM	1	Left DSP1 Firmware                       Protection
232	INT	1	Left Digital PCM Volume                  0
233	ENUM	1	Left Invert PCM                          Disabled
234	INT	1	Left AMP PCM Gain                        0
235	INT	1	Left ASPTX1 Slot Position                0
236	INT	1	Left ASPTX2 Slot Position                2
237	INT	1	Left ASPTX3 Slot Position                2
238	INT	1	Left ASPTX4 Slot Position                3
239	INT	1	Left ASPRX1 Slot Position                0
240	INT	1	Left ASPRX2 Slot Position                1
241	ENUM	1	Left VPBR Release Rate                   5ms
242	ENUM	1	Left VPBR Wait                           10ms
243	ENUM	1	Left VPBR Attack Rate                    2.5us
244	ENUM	1	Left VPBR Attack Volume                  1dB
245	INT	1	Left VPBR Max Attenuation                2
246	ENUM	1	Left VPBR Threshold 1                    2.687
247	ENUM	1	Left VPBR Enable                         Enabled
248	ENUM	1	Left PCM Soft Ramp                       .5ms
249	ENUM	1	Left AMP Mute                            Muted
250	ENUM	1	Left Boost Enable                        Disabled
251	BOOL	1	Left DSP Booted                          On
252	BOOL	1	Left DSP1 Preload Switch                 On
Failed to mixer_ctl_get_array
Failed to mixer_ctl_get_array
Failed to mixer_ctl_get_array
Failed to mixer_ctl_get_array
253	BYTE	0	HDMI EDID                                254	BYTE	0	HDMI MS EDID                             255	BYTE	0	Display Port EDID                        256	BYTE	0	Display Port1 EDID                       257	ENUM	1	External Display Type                    (null)
258	ENUM	1	External Display1 Type                   (null)
259	ENUM	1	External HDMI Type                       (null)
260	ENUM	1	External Display Audio Ack               (null)
261	ENUM	1	External Display1 Audio Ack              (null)
262	ENUM	1	External HDMI Audio Ack                  (null)
263	INT	2	External Display Audio Device            0 0
264	INT	2	External Display1 Audio Device           0 0
265	INT	2	External HDMI Device                     -1 -1
266	BOOL	1	BT SOC status                            Off
267	BOOL	1	BT set feedback channel                  Off
268	ENUM	1	DAI Clocks                               Codec Slave
269	ENUM	1	DAI Polarity                             NormalBF
270	ENUM	1	DAI Mode                                 I2S
271	ENUM	1	Static MCLK Mode                         Off
272	ENUM	1	Codec CLK Source                         MCLK
273	ENUM	1	Force Frame32                            Off
274	BYTE	80	CODEC_DMA-LPAIF_RXTX-RX-0 Channel Map     00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
275	ENUM	1	PM_QOS Vote                              Disable
276	BYTE	80	CODEC_DMA-LPAIF_RXTX-RX-1 Channel Map     00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
277	BYTE	80	CODEC_DMA-LPAIF_RXTX-RX-2 Channel Map     00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
278	BYTE	80	CODEC_DMA-LPAIF_RXTX-RX-3 Channel Map     00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
279	BYTE	80	CODEC_DMA-LPAIF_RXTX-RX-5 Channel Map     01  00  00  00  01  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
280	BYTE	80	CODEC_DMA-LPAIF_RXTX-RX-6 Channel Map     01  00  00  00  01  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
281	BYTE	80	CODEC_DMA-LPAIF_RXTX-TX-3 Channel Map     00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
282	BYTE	80	CODEC_DMA-LPAIF_RXTX-TX-4 Channel Map     00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
283	BYTE	80	CODEC_DMA-LPAIF_VA-TX-0 Channel Map       00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
284	BYTE	80	CODEC_DMA-LPAIF_VA-TX-1 Channel Map       00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
285	BYTE	80	CODEC_DMA-LPAIF_VA-TX-2 Channel Map       00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
286	BYTE	80	SLIM-DEV1-RX-7 Channel Map                01  00  00  00  9d  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
287	BYTE	80	SLIM-DEV1-TX-7 Channel Map                01  00  00  00  9f  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
288	ENUM	1	Haptics Source                           Off
289	ENUM	1	Right ASP TX1 Source                     DSPTX1
290	ENUM	1	Right ASP TX2 Source                     ASPRX1
291	ENUM	1	Right ASP TX3 Source                     Zero
292	ENUM	1	Right ASP TX4 Source                     Zero
293	ENUM	1	Right DSP RX2 Source                     Zero
294	ENUM	1	Right PCM Source                         ASP
295	BOOL	1	Right DRE Switch                         Off
296	BOOL	1	Right AMP Enable Switch                  Off
297	ENUM	1	Left ASP TX1 Source                      DSPTX1
298	ENUM	1	Left ASP TX2 Source                      ASPRX1
299	ENUM	1	Left ASP TX3 Source                      Zero
300	ENUM	1	Left ASP TX4 Source                      Zero
301	ENUM	1	Left DSP RX2 Source                      Zero
302	ENUM	1	Left PCM Source                          ASP
303	BOOL	1	Left DRE Switch                          Off
304	BOOL	1	Left AMP Enable Switch                   Off
305	BYTE	4	Right DSP1 Protection 400a4 HALO_STATE    00  00  00  02
306	BYTE	4	Right DSP1 Protection 400a4 HALO_HEARTBEAT  00  00  23  ea
307	BYTE	4	Right DSP1 Protection 400a4 AUDIO_BLK_SIZE  00  00  00  30
308	BYTE	12	Right DSP1 Protection 400a4 BUILD_JOB_NAME  00  4d  61  6e  00  75  61  6c  00  00  00  00
309	BYTE	4	Right DSP1 Protection 400a4 UILD_JOB_NUMBER  00  00  00  00
310	BYTE	4	Right DSP1 Protection 400a4 VIMON_CAL     00  00  00  02
311	BYTE	4	Right DSP1 Protection 400a4 VSC           00  ff  ea  e9
312	BYTE	4	Right DSP1 Protection 400a4 ISC           00  ff  fa  5e
313	BYTE	4	Right DSP1 Protection 400a4 VBSTMAX_VMON  00  40  00  00
314	BYTE	4	Right DSP1 Protection 400a4 VBSTMAX_IMON  00  40  00  00
315	BYTE	4	Right DSP1 Protection 400a4 ASS_H_CAL_DELAY  00  00  00  02
316	BYTE	4	Right DSP1 Protection 400a4 ASS_D_CAL_DELAY  00  00  00  03
317	BYTE	4	Right DSP1 Protection 400a4 RESYNC_STATUS  00  00  00  00
318	BYTE	4	Right DSP1 Protection cd CSPL_ENABLE      00  00  00  01
319	BYTE	4	Right DSP1 Protection cd CSPL_COMMAND     00  00  00  00
320	BYTE	4	Right DSP1 Protection cd CSPL_STATE       00  00  00  00
321	BYTE	4	Right DSP1 Protection cd CSPL_MODEL       00  00  00  00
322	BYTE	4	Right DSP1 Protection cd CSPL_TEMPERATURE  00  08  a1  71
323	BYTE	4	Right DSP1 Protection cd CSPL_SURFACE_TEMP  00  00  00  20
324	BYTE	4	Right DSP1 Protection cd SPL_OVERSIGHT_GAIN  00  10  00  00
325	BYTE	4	Right DSP1 Protection cd CAL_R            00  00  21  8a
326	BYTE	4	Right DSP1 Protection cd CAL_AMBIENT      00  00  00  21
327	BYTE	4	Right DSP1 Protection cd CAL_STATUS       00  00  00  01
328	BYTE	4	Right DSP1 Protection cd CAL_CHECKSUM     00  00  21  8b
329	BYTE	4	Right DSP1 Protection cd CAL_SET_STATUS   00  00  00  02
330	BYTE	4	Right DSP1 Protection cd RTLOG_ENABLE     00  00  00  00
331	BYTE	4	Right DSP1 Protection cd RTLOG_STATE      00  00  00  01
332	BYTE	4	Right DSP1 Protection cd RTLOG_COUNT      00  00  00  01
333	BYTE	4	Right DSP1 Protection cd RTLOG_TIMER      00  00  00  02
334	BYTE	4	Right DSP1 Protection cd RTLOG_FRAMECOUNTER  00  00  00  00
335	BYTE	4	Right DSP1 Protection cd ESPERCAPTUREWINDOW  00  00  00  00
336	BYTE	100	Right DSP1 Protection cd RTLOG_VARIABLE   00  00  00  6f  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
337	BYTE	200	Right DSP1 Protection cd RTLOG_DATA       00  08  ee  c1  00  08  ee  c1  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
338	INT	1	Right DSP1 Protection cd RTLOG_ACK_CONTROL 0
339	BYTE	4	Right DSP1 Protection cd BDLOG_MAX_TEMP   00  00  00  00
340	BYTE	4	Right DSP1 Protection cd BDLOG_MAX_EXC    00  00  00  00
341	BYTE	4	Right DSP1 Protection cd OG_OVER_TEMP_COUNT  00  00  00  00
342	BYTE	4	Right DSP1 Protection cd LOG_OVER_EXC_COUNT  00  00  00  00
343	BYTE	4	Right DSP1 Protection cd DLOG_ABNORMAL_MUTE  00  00  00  00
344	BYTE	4	Right DSP1 Protection cd CSPL_CNG_ENABLE  00  00  00  00
345	BYTE	4	Right DSP1 Protection cd CSPL_CURRENT_PEAK  00  00  00  00
346	BYTE	4	Right DSP1 Protection cd CSPL_VOLTAGE_PEAK  00  00  00  00
347	BYTE	4	Right DSP1 Protection cd ALGO_FRAME_DELAY  00  00  00  04
348	BYTE	4	Left DSP1 Protection 400a4 HALO_STATE     00  00  00  02
349	BYTE	4	Left DSP1 Protection 400a4 HALO_HEARTBEAT  00  00  00  01
350	BYTE	4	Left DSP1 Protection 400a4 AUDIO_BLK_SIZE  00  00  00  30
351	BYTE	12	Left DSP1 Protection 400a4 BUILD_JOB_NAME  00  4d  61  6e  00  75  61  6c  00  00  00  00
352	BYTE	4	Left DSP1 Protection 400a4 BUILD_JOB_NUMBER  00  00  00  00
353	BYTE	4	Left DSP1 Protection 400a4 VIMON_CAL      00  00  00  02
354	BYTE	4	Left DSP1 Protection 400a4 VSC            00  ff  fa  78
355	BYTE	4	Left DSP1 Protection 400a4 ISC            00  00  13  f5
356	BYTE	4	Left DSP1 Protection 400a4 VBSTMAX_VMON   00  40  00  00
357	BYTE	4	Left DSP1 Protection 400a4 VBSTMAX_IMON   00  40  00  00
358	BYTE	4	Left DSP1 Protection 400a4 LASS_H_CAL_DELAY  00  00  00  02
359	BYTE	4	Left DSP1 Protection 400a4 LASS_D_CAL_DELAY  00  00  00  03
360	BYTE	4	Left DSP1 Protection 400a4 RESYNC_STATUS  00  00  00  00
361	BYTE	4	Left DSP1 Protection cd CSPL_ENABLE       00  00  00  01
362	BYTE	4	Left DSP1 Protection cd CSPL_COMMAND      00  00  00  00
363	BYTE	4	Left DSP1 Protection cd CSPL_STATE        00  00  00  00
364	BYTE	4	Left DSP1 Protection cd CSPL_MODEL        00  00  00  00
365	BYTE	4	Left DSP1 Protection cd CSPL_TEMPERATURE  00  00  00  00
366	BYTE	4	Left DSP1 Protection cd CSPL_SURFACE_TEMP  00  00  00  00
367	BYTE	4	Left DSP1 Protection cd CSPL_OVERSIGHT_GAIN  00  00  00  00
368	BYTE	4	Left DSP1 Protection cd CAL_R             00  00  20  d1
369	BYTE	4	Left DSP1 Protection cd CAL_AMBIENT       00  00  00  21
370	BYTE	4	Left DSP1 Protection cd CAL_STATUS        00  00  00  01
371	BYTE	4	Left DSP1 Protection cd CAL_CHECKSUM      00  00  20  d2
372	BYTE	4	Left DSP1 Protection cd CAL_SET_STATUS    00  00  00  00
373	BYTE	4	Left DSP1 Protection cd RTLOG_ENABLE      00  00  00  00
374	BYTE	4	Left DSP1 Protection cd RTLOG_STATE       00  00  00  00
375	BYTE	4	Left DSP1 Protection cd RTLOG_COUNT       00  00  00  00
376	BYTE	4	Left DSP1 Protection cd RTLOG_TIMER       00  00  00  00
377	BYTE	4	Left DSP1 Protection cd RTLOG_FRAMECOUNTER  00  00  00  00
378	BYTE	4	Left DSP1 Protection cd MESPERCAPTUREWINDOW  00  00  00  00
379	BYTE	100	Left DSP1 Protection cd RTLOG_VARIABLE    00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
380	BYTE	200	Left DSP1 Protection cd RTLOG_DATA        00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00  00
381	INT	1	Left DSP1 Protection cd RTLOG_ACK_CONTROL 0
382	BYTE	4	Left DSP1 Protection cd BDLOG_MAX_TEMP    00  00  00  00
383	BYTE	4	Left DSP1 Protection cd BDLOG_MAX_EXC     00  00  00  00
384	BYTE	4	Left DSP1 Protection cd LOG_OVER_TEMP_COUNT  00  00  00  00
385	BYTE	4	Left DSP1 Protection cd DLOG_OVER_EXC_COUNT  00  00  00  00
386	BYTE	4	Left DSP1 Protection cd BDLOG_ABNORMAL_MUTE  00  00  00  00
387	BYTE	4	Left DSP1 Protection cd CSPL_CNG_ENABLE   00  00  00  00
388	BYTE	4	Left DSP1 Protection cd CSPL_CURRENT_PEAK  00  00  00  00
389	BYTE	4	Left DSP1 Protection cd CSPL_VOLTAGE_PEAK  00  00  00  00
390	BYTE	4	Left DSP1 Protection cd ALGO_FRAME_DELAY  00  00  00  04
r0q:/data # 
</pre>