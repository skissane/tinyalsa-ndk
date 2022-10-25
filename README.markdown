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

The below example is from a rooted phone.

Let's make /data writable:

<pre>
kasidit@kasidit:~/tinyalsa-ndk/libs/arm64-v8a$ adb shell
shell@klte:/ $ su
su
root@klte:/ # chmod 777 /data
chmod 777 /data
root@klte:/ # exit
exit
shell@klte:/ $ exit
exit
</pre>

Now, let's push the tinymix application there, set its executable bit and run it:

<pre>
kasidit@kasidit:~/tinyalsa-ndk/libs/armeabi$ adb push tinymix  /data
374 KB/s (17688 bytes in 0.046s)
kasidit@kasidit:~/tinyalsa-ndk/libs/armeabi$ adb shell
shell@klte:/ $ su
su
root@klte:/ # cd /data
cd /data
root@klte:/data # chmod 777 tinymix
chmod 777 tinymix
root@klte:/data # ./tinymix
./tinymix
Mixer name: 'msm8974-taiko-mtp-snd-card'
Number of controls: 665
ctl	type	num	name                                     value
0	INT	3	Voice Rx Device Mute                     -1 -1 -1
1	INT	3	Voice Tx Mute                            -1 -1 -1
2	INT	3	Voice Rx Gain                            -1 -1 -1
3	ENUM	1	TTY Mode                                 OFF
4	INT	2	Slowtalk Enable                          0 0
5	INT	14	Sec Set DHA data                         0 0 0 0 0 0 0 0 0 0 0 0 0 0
6	BOOL	1	Loopback Enable                          Off
7	INT	2	Voip Tx Mute                             -1 -1
8	INT	2	Voip Rx Gain                             -1 -1
9	INT	1	Voip Mode Config                         12
10	INT	1	Voip Rate Config                         0
11	INT	2	Voip Evrc Min Max Rate Config            0 0
12	BOOL	1	Voip Dtx Mode                            Off
13	BOOL	1	Compress Gapless Playback                Off
14	BOOL	1	ES705 RX1 Enable                         Off
15	BOOL	1	ES705 TX1 Enable                         Off
16	BOOL	1	ES705 RX2 Enable                         Off
17	ENUM	1	Mic Config                               CT 2-mic
18	ENUM	1	AEC Mode                                 Off
19	ENUM	1	VEQ Enable                               Off
20	ENUM	1	Dereverb Enable                          Off
21	INT	1	Dereverb Gain                            65542
22	ENUM	1	BWE Enable                               Off
23	INT	1	BWE High Band Gain                       10
24	INT	1	BWE Max SNR                              32810
25	ENUM	1	BWE Post EQ Enable                       Off
26	INT	1	SLIMbus Link Multi Channel               0
27	ENUM	1	Set Power State                          Sleep
28	ENUM	1	Algorithm Processing                     On
29	ENUM	1	Algorithm Sample Rate                    fs=8khz
30	ENUM	1	Algorithm                                None
31	ENUM	1	Mix Sample Rate                         
32	INT	1	Internal Route                           5
33	ENUM	1	Internal Rate                            NB
34	INT	1	Preset                                   0
35	INT	1	Audio Custom Profile                     0
36	ENUM	1	ES705-AP Tx Channels                     One
37	BOOL	1	Voice Sense Enable                       Off
38	ENUM	1	Voice Sense Set Wakeup Word              Default
39	ENUM	1	Voice Sense Status                       No Event
40	ENUM	1	Voice Sense Training Mode               
41	ENUM	1	Voice Sense Training Status              Training
42	ENUM	1	Voice Sense Training Record             
43	ENUM	1	Voice Sense Stored Keyword              
44	INT	1	Voice Sense Detect Sensitivity           32790
45	INT	1	Voice Activity Detect Sensitivity        32790
46	ENUM	1	ES705 Power State                        Normal
47	ENUM	1	Noise Suppression                        On
48	ENUM	1	Audio Zoom                               disabled
49	INT	1	Enable/Disable Streaming PATH/Endpoint   -1
50	ENUM	1	RX Enable                               
51	ENUM	1	Stereo Widening                          Off
52	ENUM	1	Speech Time Stretching                   Off
53	ENUM	1	RX Noise Suppression                     Off
54	ENUM	1	Wind Noise Filter                        Off
55	ENUM	1	BWE Preset                               Off
56	ENUM	1	AVALON Wind Noise                        Off
57	ENUM	1	Virtual Bass Boost                       Off
58	INT	1	UART FW Download Rate                    3
59	BOOL	1	Voice Sense Stream Enable                Off
60	INT	1	ES705 Voice Wakeup Enable                0
61	BOOL	1	ES705 VS Abort                           Off
62	INT	1	ES705 VS Make Internal Dump              0
63	BOOL	1	ES705 VS Make External Dump              Off
64	BOOL	1	ES705 Voice LPM Enable                   Off
65	INT	1	Internal Route Config                    5
66	BOOL	1	Current Network Type                     Off
67	ENUM	1	EAR PA Gain                              POS_0_DB
68	INT	1	HPHL Volume                              0
69	INT	1	HPHR Volume                              0
70	INT	1	LINEOUT1 Volume                          0
71	INT	1	LINEOUT2 Volume                          0
72	INT	1	LINEOUT3 Volume                          0
73	INT	1	LINEOUT4 Volume                          0
74	INT	1	SPK DRV Volume                           0
75	INT	1	ADC1 Volume                              0
76	INT	1	ADC2 Volume                              0
77	INT	1	ADC3 Volume                              0
78	INT	1	ADC4 Volume                              0
79	INT	1	ADC5 Volume                              0
80	INT	1	ADC6 Volume                              0
81	INT	1	HPHL Impedance                           0
82	INT	1	HPHR Impedance                           0
83	INT	1	RX1 Digital Volume                       0
84	INT	1	RX2 Digital Volume                       0
85	INT	1	RX3 Digital Volume                       0
86	INT	1	RX4 Digital Volume                       0
87	INT	1	RX5 Digital Volume                       0
88	INT	1	RX6 Digital Volume                       0
89	INT	1	RX7 Digital Volume                       0
90	INT	1	DEC1 Volume                              0
91	INT	1	DEC2 Volume                              0
92	INT	1	DEC3 Volume                              0
93	INT	1	DEC4 Volume                              0
94	INT	1	DEC5 Volume                              0
95	INT	1	DEC6 Volume                              0
96	INT	1	DEC7 Volume                              0
97	INT	1	DEC8 Volume                              0
98	INT	1	DEC9 Volume                              0
99	INT	1	DEC10 Volume                             0
100	INT	1	IIR1 INP1 Volume                         84
101	INT	1	IIR1 INP2 Volume                         84
102	INT	1	IIR1 INP3 Volume                         84
103	INT	1	IIR1 INP4 Volume                         84
104	INT	1	IIR2 INP1 Volume                         84
105	INT	1	IIR2 INP2 Volume                         84
106	INT	1	IIR2 INP3 Volume                         84
107	INT	1	IIR2 INP4 Volume                         84
108	INT	1	ANC Slot                                 0
109	ENUM	1	ANC Function                             OFF
110	ENUM	1	TX1 HPF cut off                          MIN_3DB_4Hz
111	ENUM	1	TX2 HPF cut off                          MIN_3DB_4Hz
112	ENUM	1	TX3 HPF cut off                          MIN_3DB_4Hz
113	ENUM	1	TX4 HPF cut off                          MIN_3DB_4Hz
114	ENUM	1	TX5 HPF cut off                          MIN_3DB_4Hz
115	ENUM	1	TX6 HPF cut off                          MIN_3DB_4Hz
116	ENUM	1	TX7 HPF cut off                          MIN_3DB_4Hz
117	ENUM	1	TX8 HPF cut off                          MIN_3DB_4Hz
118	ENUM	1	TX9 HPF cut off                          MIN_3DB_4Hz
119	ENUM	1	TX10 HPF cut off                         MIN_3DB_4Hz
120	BOOL	1	TX1 HPF Switch                           Off
121	BOOL	1	TX2 HPF Switch                           On
122	BOOL	1	TX3 HPF Switch                           Off
123	BOOL	1	TX4 HPF Switch                           On
124	BOOL	1	TX5 HPF Switch                           Off
125	BOOL	1	TX6 HPF Switch                           Off
126	BOOL	1	TX7 HPF Switch                           Off
127	BOOL	1	TX8 HPF Switch                           Off
128	BOOL	1	TX9 HPF Switch                           Off
129	BOOL	1	TX10 HPF Switch                          Off
130	BOOL	1	RX1 HPF Switch                           Off
131	BOOL	1	RX2 HPF Switch                           Off
132	BOOL	1	RX3 HPF Switch                           Off
133	BOOL	1	RX4 HPF Switch                           Off
134	BOOL	1	RX5 HPF Switch                           Off
135	BOOL	1	RX6 HPF Switch                           Off
136	BOOL	1	RX7 HPF Switch                           Off
137	ENUM	1	RX1 HPF cut off                          MIN_3DB_4Hz
138	ENUM	1	RX2 HPF cut off                          MIN_3DB_4Hz
139	ENUM	1	RX3 HPF cut off                          MIN_3DB_4Hz
140	ENUM	1	RX4 HPF cut off                          MIN_3DB_4Hz
141	ENUM	1	RX5 HPF cut off                          MIN_3DB_4Hz
142	ENUM	1	RX6 HPF cut off                          MIN_3DB_4Hz
143	ENUM	1	RX7 HPF cut off                          MIN_3DB_4Hz
144	BOOL	1	IIR1 Enable Band1                        Off
145	BOOL	1	IIR1 Enable Band2                        Off
146	BOOL	1	IIR1 Enable Band3                        Off
147	BOOL	1	IIR1 Enable Band4                        Off
148	BOOL	1	IIR1 Enable Band5                        Off
149	BOOL	1	IIR2 Enable Band1                        Off
150	BOOL	1	IIR2 Enable Band2                        Off
151	BOOL	1	IIR2 Enable Band3                        Off
152	BOOL	1	IIR2 Enable Band4                        Off
153	BOOL	1	IIR2 Enable Band5                        Off
154	INT	5	IIR1 Band1                               0 0 0 0 0
155	INT	5	IIR1 Band2                               0 0 0 0 0
156	INT	5	IIR1 Band3                               0 0 0 0 0
157	INT	5	IIR1 Band4                               0 0 0 0 0
158	INT	5	IIR1 Band5                               0 0 0 0 0
159	INT	5	IIR2 Band1                               0 0 0 0 0
160	INT	5	IIR2 Band2                               0 0 0 0 0
161	INT	5	IIR2 Band3                               0 0 0 0 0
162	INT	5	IIR2 Band4                               0 0 0 0 0
163	INT	5	IIR2 Band5                               0 0 0 0 0
164	BOOL	1	COMP0 Switch                             Off
165	BOOL	1	COMP1 Switch                             Off
166	BOOL	1	COMP2 Switch                             Off
167	ENUM	1	MAD Input                                DMIC1
168	ENUM	1	VOC_EXT_EC MUX                          
169	ENUM	2	SLIM0_RX_VI_FB_LCH_MUX                   ZERO ZERO
170	BOOL	1	QCHAT_Tx Mixer PRI_TX_QCHAT              Off
171	BOOL	1	QCHAT_Tx Mixer SLIM_0_TX_QCHAT           Off
172	BOOL	1	QCHAT_Tx Mixer INTERNAL_BT_SCO_TX_QCHAT  Off
173	BOOL	1	QCHAT_Tx Mixer AFE_PCM_TX_QCHAT          Off
174	BOOL	1	QCHAT_Tx Mixer AUX_PCM_TX_QCHAT          Off
175	BOOL	1	QCHAT_Tx Mixer SEC_AUX_PCM_TX_QCHAT      Off
176	BOOL	1	QCHAT_Tx Mixer MI2S_TX_QCHAT             Off
177	BOOL	1	QCHAT_Tx Mixer PRI_MI2S_TX_QCHAT         Off
178	BOOL	1	PRI_MI2S_RX Port Mixer SEC_MI2S_TX       Off
179	BOOL	1	MI2S_RX Port Mixer SLIM_1_TX             Off
180	BOOL	1	MI2S_RX Port Mixer MI2S_TX               Off
181	BOOL	1	SLIMBUS_3_RX Port Mixer INTERNAL_BT_SCO_RX Off
182	BOOL	1	SLIMBUS_3_RX Port Mixer MI2S_TX          Off
183	BOOL	1	SEC_I2S_RX Port Mixer MI2S_TX            Off
184	BOOL	1	HDMI_RX Port Mixer MI2S_TX               Off
185	BOOL	1	AFE_PCM_RX Port Mixer INTERNAL_FM_TX     Off
186	BOOL	1	INTERNAL_BT_SCO_RX Port Mixer SLIM_1_TX  Off
187	BOOL	1	SLIMBUS_1_RX Port Mixer INTERNAL_BT_SCO_TX Off
188	BOOL	1	SEC_AUXPCM_RX Port Mixer SEC_AUX_PCM_UL_TX Off
189	BOOL	1	SEC_AUXPCM_RX Port Mixer SLIM_0_TX       Off
190	BOOL	1	AUXPCM_RX Port Mixer AUX_PCM_UL_TX       Off
191	BOOL	1	AUXPCM_RX Port Mixer SLIM_0_TX           Off
192	BOOL	1	SLIMBUS_0_RX Port Mixer INTERNAL_FM_TX   Off
193	BOOL	1	SLIMBUS_0_RX Port Mixer SLIM_0_TX        Off
194	BOOL	1	SLIMBUS_0_RX Port Mixer AUX_PCM_UL_TX    Off
195	BOOL	1	SLIMBUS_0_RX Port Mixer SEC_AUX_PCM_UL_TX Off
196	BOOL	1	SLIMBUS_0_RX Port Mixer MI2S_TX          Off
197	BOOL	1	SLIMBUS_3_RX_Voice Mixer Voice Stub      Off
198	BOOL	1	SLIMBUS_1_RX Mixer Voice Stub            Off
199	BOOL	1	STUB_RX Mixer Voice Stub                 Off
200	BOOL	1	Voice Stub Tx Mixer STUB_TX_HL           Off
201	BOOL	1	Voice Stub Tx Mixer INTERNAL_BT_SCO_TX   Off
202	BOOL	1	Voice Stub Tx Mixer SLIM_1_TX            Off
203	BOOL	1	Voice Stub Tx Mixer STUB_1_TX_HL         Off
204	BOOL	1	Voice Stub Tx Mixer MI2S_TX              Off
205	BOOL	1	AFE_PCM_RX Audio Mixer MultiMedia1       Off
206	BOOL	1	AFE_PCM_RX Audio Mixer MultiMedia2       Off
207	BOOL	1	AFE_PCM_RX Audio Mixer MultiMedia3       Off
208	BOOL	1	AFE_PCM_RX Audio Mixer MultiMedia4       Off
209	BOOL	1	AFE_PCM_RX Audio Mixer MultiMedia5       Off
210	BOOL	1	AFE_PCM_RX Audio Mixer MultiMedia6       Off
211	BOOL	1	AFE_PCM_RX Audio Mixer MultiMedia7       Off
212	BOOL	1	AFE_PCM_RX Audio Mixer MultiMedia8       Off
213	BOOL	1	AFE_PCM_RX Audio Mixer MultiMedia9       Off
214	BOOL	1	INTERNAL_FM_RX Audio Mixer MultiMedia1   Off
215	BOOL	1	INTERNAL_FM_RX Audio Mixer MultiMedia2   Off
216	BOOL	1	INTERNAL_FM_RX Audio Mixer MultiMedia3   Off
217	BOOL	1	INTERNAL_FM_RX Audio Mixer MultiMedia4   Off
218	BOOL	1	INTERNAL_FM_RX Audio Mixer MultiMedia5   Off
219	BOOL	1	INTERNAL_FM_RX Audio Mixer MultiMedia6   Off
220	BOOL	1	INTERNAL_FM_RX Audio Mixer MultiMedia7   Off
221	BOOL	1	INTERNAL_FM_RX Audio Mixer MultiMedia8   Off
222	BOOL	1	INTERNAL_FM_RX Audio Mixer MultiMedia9   Off
223	BOOL	1	INTERNAL_BT_SCO_RX Audio Mixer MultiMedia1 Off
224	BOOL	1	INTERNAL_BT_SCO_RX Audio Mixer MultiMedia2 Off
225	BOOL	1	INTERNAL_BT_SCO_RX Audio Mixer MultiMedia3 Off
226	BOOL	1	INTERNAL_BT_SCO_RX Audio Mixer MultiMedia4 Off
227	BOOL	1	INTERNAL_BT_SCO_RX Audio Mixer MultiMedia5 Off
228	BOOL	1	INTERNAL_BT_SCO_RX Audio Mixer MultiMedia6 Off
229	BOOL	1	INTERNAL_BT_SCO_RX Audio Mixer MultiMedia7 Off
230	BOOL	1	INTERNAL_BT_SCO_RX Audio Mixer MultiMedia8 Off
231	BOOL	1	INTERNAL_BT_SCO_RX Audio Mixer MultiMedia9 Off
232	BOOL	1	VoLTE_Tx Mixer PRI_TX_VoLTE              Off
233	BOOL	1	VoLTE_Tx Mixer SLIM_0_TX_VoLTE           Off
234	BOOL	1	VoLTE_Tx Mixer INTERNAL_BT_SCO_TX_VoLTE  Off
235	BOOL	1	VoLTE_Tx Mixer AFE_PCM_TX_VoLTE          Off
236	BOOL	1	VoLTE_Tx Mixer AUX_PCM_TX_VoLTE          Off
237	BOOL	1	VoLTE_Tx Mixer SEC_AUX_PCM_TX_VoLTE      Off
238	BOOL	1	VoLTE_Tx Mixer MI2S_TX_VoLTE             Off
239	BOOL	1	Voip_Tx Mixer PRI_TX_Voip                Off
240	BOOL	1	Voip_Tx Mixer MI2S_TX_Voip               Off
241	BOOL	1	Voip_Tx Mixer SLIM_0_TX_Voip             Off
242	BOOL	1	Voip_Tx Mixer INTERNAL_BT_SCO_TX_Voip    Off
243	BOOL	1	Voip_Tx Mixer AFE_PCM_TX_Voip            Off
244	BOOL	1	Voip_Tx Mixer AUX_PCM_TX_Voip            Off
245	BOOL	1	Voip_Tx Mixer SEC_AUX_PCM_TX_Voip        Off
246	BOOL	1	Voip_Tx Mixer PRI_MI2S_TX_Voip           Off
247	BOOL	1	Voice2_Tx Mixer PRI_TX_Voice2            Off
248	BOOL	1	Voice2_Tx Mixer MI2S_TX_Voice2           Off
249	BOOL	1	Voice2_Tx Mixer SLIM_0_TX_Voice2         Off
250	BOOL	1	Voice2_Tx Mixer INTERNAL_BT_SCO_TX_Voice2 Off
251	BOOL	1	Voice2_Tx Mixer AFE_PCM_TX_Voice2        Off
252	BOOL	1	Voice2_Tx Mixer AUX_PCM_TX_Voice2        Off
253	BOOL	1	Voice2_Tx Mixer PRI_MI2S_TX_Voice2       Off
254	BOOL	1	Voice_Tx Mixer PRI_TX_Voice              Off
255	BOOL	1	Voice_Tx Mixer MI2S_TX_Voice             Off
256	BOOL	1	Voice_Tx Mixer SLIM_0_TX_Voice           Off
257	BOOL	1	Voice_Tx Mixer INTERNAL_BT_SCO_TX_Voice  Off
258	BOOL	1	Voice_Tx Mixer AFE_PCM_TX_Voice          Off
259	BOOL	1	Voice_Tx Mixer AUX_PCM_TX_Voice          Off
260	BOOL	1	Voice_Tx Mixer SEC_AUX_PCM_TX_Voice      Off
261	BOOL	1	Voice_Tx Mixer PRI_MI2S_TX_Voice         Off
262	BOOL	1	MI2S_RX_Voice Mixer CSVoice              Off
263	BOOL	1	MI2S_RX_Voice Mixer Voice2               Off
264	BOOL	1	MI2S_RX_Voice Mixer Voip                 Off
265	BOOL	1	MI2S_RX_Voice Mixer Voice Stub           Off
266	BOOL	1	MI2S_RX_Voice Mixer VoLTE                Off
267	BOOL	1	MI2S_RX_Voice Mixer DTMF                 Off
268	BOOL	1	MI2S_RX_Voice Mixer QCHAT                Off
269	BOOL	1	HDMI_RX_Voice Mixer CSVoice              Off
270	BOOL	1	HDMI_RX_Voice Mixer Voice2               Off
271	BOOL	1	HDMI_RX_Voice Mixer Voip                 Off
272	BOOL	1	HDMI_RX_Voice Mixer VoLTE                Off
273	BOOL	1	HDMI_RX_Voice Mixer DTMF                 Off
274	BOOL	1	HDMI_RX_Voice Mixer QCHAT                Off
275	BOOL	1	SEC_AUX_PCM_RX_Voice Mixer CSVoice       Off
276	BOOL	1	SEC_AUX_PCM_RX_Voice Mixer Voip          Off
277	BOOL	1	SEC_AUX_PCM_RX_Voice Mixer VoLTE         Off
278	BOOL	1	SEC_AUX_PCM_RX_Voice Mixer DTMF          Off
279	BOOL	1	SEC_AUX_PCM_RX_Voice Mixer QCHAT         Off
280	BOOL	1	AUX_PCM_RX_Voice Mixer CSVoice           Off
281	BOOL	1	AUX_PCM_RX_Voice Mixer Voice2            Off
282	BOOL	1	AUX_PCM_RX_Voice Mixer Voip              Off
283	BOOL	1	AUX_PCM_RX_Voice Mixer VoLTE             Off
284	BOOL	1	AUX_PCM_RX_Voice Mixer DTMF              Off
285	BOOL	1	AUX_PCM_RX_Voice Mixer QCHAT             Off
286	BOOL	1	AFE_PCM_RX_Voice Mixer CSVoice           Off
287	BOOL	1	AFE_PCM_RX_Voice Mixer Voice2            Off
288	BOOL	1	AFE_PCM_RX_Voice Mixer Voip              Off
289	BOOL	1	AFE_PCM_RX_Voice Mixer VoLTE             Off
290	BOOL	1	AFE_PCM_RX_Voice Mixer DTMF              Off
291	BOOL	1	AFE_PCM_RX_Voice Mixer QCHAT             Off
292	BOOL	1	INTERNAL_BT_SCO_RX_Voice Mixer CSVoice   Off
293	BOOL	1	INTERNAL_BT_SCO_RX_Voice Mixer Voice2    Off
294	BOOL	1	INTERNAL_BT_SCO_RX_Voice Mixer Voip      Off
295	BOOL	1	INTERNAL_BT_SCO_RX_Voice Mixer Voice Stub Off
296	BOOL	1	INTERNAL_BT_SCO_RX_Voice Mixer VoLTE     Off
297	BOOL	1	INTERNAL_BT_SCO_RX_Voice Mixer DTMF      Off
298	BOOL	1	INTERNAL_BT_SCO_RX_Voice Mixer QCHAT     Off
299	BOOL	1	SLIM_0_RX_Voice Mixer CSVoice            Off
300	BOOL	1	SLIM_0_RX_Voice Mixer Voice2             Off
301	BOOL	1	SLIM_0_RX_Voice Mixer Voip               Off
302	BOOL	1	SLIM_0_RX_Voice Mixer VoLTE              Off
303	BOOL	1	SLIM_0_RX_Voice Mixer DTMF               Off
304	BOOL	1	SLIM_0_RX_Voice Mixer QCHAT              Off
305	BOOL	1	SEC_MI2S_RX_Voice Mixer CSVoice          Off
306	BOOL	1	SEC_MI2S_RX_Voice Mixer Voice2           Off
307	BOOL	1	SEC_MI2S_RX_Voice Mixer Voip             Off
308	BOOL	1	SEC_MI2S_RX_Voice Mixer VoLTE            Off
309	BOOL	1	SEC_MI2S_RX_Voice Mixer DTMF             Off
310	BOOL	1	SEC_MI2S_RX_Voice Mixer QCHAT            Off
311	BOOL	1	SEC_RX_Voice Mixer CSVoice               Off
312	BOOL	1	SEC_RX_Voice Mixer Voice2                Off
313	BOOL	1	SEC_RX_Voice Mixer Voip                  Off
314	BOOL	1	SEC_RX_Voice Mixer VoLTE                 Off
315	BOOL	1	SEC_RX_Voice Mixer DTMF                  Off
316	BOOL	1	SEC_RX_Voice Mixer QCHAT                 Off
317	BOOL	1	PRI_RX_Voice Mixer CSVoice               Off
318	BOOL	1	PRI_RX_Voice Mixer Voice2                Off
319	BOOL	1	PRI_RX_Voice Mixer Voip                  Off
320	BOOL	1	PRI_RX_Voice Mixer VoLTE                 Off
321	BOOL	1	PRI_RX_Voice Mixer DTMF                  Off
322	BOOL	1	PRI_RX_Voice Mixer QCHAT                 Off
323	BOOL	1	SLIMBUS_4_RX Audio Mixer MultiMedia1     Off
324	BOOL	1	SLIMBUS_4_RX Audio Mixer MultiMedia2     Off
325	BOOL	1	Incall_Music_2 Audio Mixer MultiMedia1   Off
326	BOOL	1	Incall_Music_2 Audio Mixer MultiMedia2   Off
327	BOOL	1	Incall_Music_2 Audio Mixer MultiMedia5   Off
328	BOOL	1	Incall_Music_2 Audio Mixer MultiMedia9   Off
329	BOOL	1	Incall_Music Audio Mixer MultiMedia1     Off
330	BOOL	1	Incall_Music Audio Mixer MultiMedia2     Off
331	BOOL	1	Incall_Music Audio Mixer MultiMedia5     Off
332	BOOL	1	Incall_Music Audio Mixer MultiMedia9     Off
333	BOOL	1	SEC_AUX_PCM_RX Audio Mixer MultiMedia1   Off
334	BOOL	1	SEC_AUX_PCM_RX Audio Mixer MultiMedia2   Off
335	BOOL	1	SEC_AUX_PCM_RX Audio Mixer MultiMedia3   Off
336	BOOL	1	SEC_AUX_PCM_RX Audio Mixer MultiMedia4   Off
337	BOOL	1	SEC_AUX_PCM_RX Audio Mixer MultiMedia5   Off
338	BOOL	1	SEC_AUX_PCM_RX Audio Mixer MultiMedia6   Off
339	BOOL	1	SEC_AUX_PCM_RX Audio Mixer MultiMedia7   Off
340	BOOL	1	SEC_AUX_PCM_RX Audio Mixer MultiMedia8   Off
341	BOOL	1	SEC_AUX_PCM_RX Audio Mixer MultiMedia9   Off
342	BOOL	1	AUX_PCM_RX Audio Mixer MultiMedia1       Off
343	BOOL	1	AUX_PCM_RX Audio Mixer MultiMedia2       Off
344	BOOL	1	AUX_PCM_RX Audio Mixer MultiMedia3       Off
345	BOOL	1	AUX_PCM_RX Audio Mixer MultiMedia4       Off
346	BOOL	1	AUX_PCM_RX Audio Mixer MultiMedia5       Off
347	BOOL	1	AUX_PCM_RX Audio Mixer MultiMedia6       Off
348	BOOL	1	AUX_PCM_RX Audio Mixer MultiMedia7       Off
349	BOOL	1	AUX_PCM_RX Audio Mixer MultiMedia8       Off
350	BOOL	1	AUX_PCM_RX Audio Mixer MultiMedia9       Off
351	BOOL	1	AUX_PCM_RX Audio Mixer MultiMedia10      Off
352	BOOL	1	MultiMedia10 Mixer SLIM_0_TX             Off
353	BOOL	1	MultiMedia10 Mixer AUX_PCM_TX            Off
354	BOOL	1	MultiMedia6 Mixer INTERNAL_FM_TX         Off
355	BOOL	1	MultiMedia6 Mixer SLIM_0_TX              Off
356	BOOL	1	MultiMedia8 Mixer SLIM_0_TX              Off
357	BOOL	1	MultiMedia8 Mixer PRI_MI2S_TX            Off
358	BOOL	1	MultiMedia8 Mixer INTERNAL_FM_TX         Off
359	BOOL	1	MultiMedia8 Mixer INTERNAL_BT_SCO_TX     Off
360	BOOL	1	MultiMedia8 Mixer AFE_PCM_TX             Off
361	BOOL	1	MultiMedia8 Mixer VOC_REC_DL             Off
362	BOOL	1	MultiMedia8 Mixer VOC_REC_UL             Off
363	BOOL	1	MultiMedia5 Mixer SLIM_0_TX              Off
364	BOOL	1	MultiMedia5 Mixer INTERNAL_FM_TX         Off
365	BOOL	1	MultiMedia5 Mixer MI2S_TX                Off
366	BOOL	1	MultiMedia5 Mixer AFE_PCM_TX             Off
367	BOOL	1	MultiMedia5 Mixer INTERNAL_BT_SCO_TX     Off
368	BOOL	1	MultiMedia5 Mixer AUX_PCM_TX             Off
369	BOOL	1	MultiMedia5 Mixer SEC_AUX_PCM_TX         Off
370	BOOL	1	MultiMedia4 Mixer SLIM_0_TX              Off
371	BOOL	1	MultiMedia4 Mixer PRI_MI2S_TX            Off
372	BOOL	1	MultiMedia4 Mixer INTERNAL_FM_TX         Off
373	BOOL	1	MultiMedia4 Mixer INTERNAL_BT_SCO_TX     Off
374	BOOL	1	MultiMedia4 Mixer AFE_PCM_TX             Off
375	BOOL	1	MultiMedia4 Mixer VOC_REC_DL             Off
376	BOOL	1	MultiMedia4 Mixer VOC_REC_UL             Off
377	BOOL	1	MultiMedia2 Mixer INTERNAL_FM_TX         Off
378	BOOL	1	MultiMedia2 Mixer MI2S_TX                Off
379	BOOL	1	MultiMedia2 Mixer SLIM_0_TX              Off
380	BOOL	1	MultiMedia1 Mixer PRI_TX                 Off
381	BOOL	1	MultiMedia1 Mixer MI2S_TX                Off
382	BOOL	1	MultiMedia1 Mixer PRI_MI2S_TX            Off
383	BOOL	1	MultiMedia1 Mixer QUAT_MI2S_TX           Off
384	BOOL	1	MultiMedia1 Mixer TERT_MI2S_TX           Off
385	BOOL	1	MultiMedia1 Mixer SEC_MI2S_TX            Off
386	BOOL	1	MultiMedia1 Mixer SLIM_0_TX              Off
387	BOOL	1	MultiMedia1 Mixer AUX_PCM_UL_TX          Off
388	BOOL	1	MultiMedia1 Mixer SEC_AUX_PCM_UL_TX      Off
389	BOOL	1	MultiMedia1 Mixer INTERNAL_BT_SCO_TX     Off
390	BOOL	1	MultiMedia1 Mixer INTERNAL_FM_TX         Off
391	BOOL	1	MultiMedia1 Mixer AFE_PCM_TX             Off
392	BOOL	1	MultiMedia1 Mixer VOC_REC_DL             Off
393	BOOL	1	MultiMedia1 Mixer VOC_REC_UL             Off
394	BOOL	1	MultiMedia1 Mixer SLIM_4_TX              Off
395	BOOL	1	PRI_MI2S_RX Audio Mixer MultiMedia1      Off
396	BOOL	1	PRI_MI2S_RX Audio Mixer MultiMedia2      Off
397	BOOL	1	PRI_MI2S_RX Audio Mixer MultiMedia3      Off
398	BOOL	1	PRI_MI2S_RX Audio Mixer MultiMedia4      Off
399	BOOL	1	PRI_MI2S_RX Audio Mixer MultiMedia5      Off
400	BOOL	1	SEC_MI2S_RX Port Mixer PRI_MI2S_TX       Off
401	BOOL	1	SEC_MI2S_RX Port Mixer INTERNAL_FM_TX    Off
402	BOOL	1	SEC_MI2S_RX Audio Mixer MultiMedia1      Off
403	BOOL	1	SEC_MI2S_RX Audio Mixer MultiMedia2      Off
404	BOOL	1	SEC_MI2S_RX Audio Mixer MultiMedia3      Off
405	BOOL	1	SEC_MI2S_RX Audio Mixer MultiMedia4      Off
406	BOOL	1	SEC_MI2S_RX Audio Mixer MultiMedia5      Off
407	BOOL	1	TERT_MI2S_RX Audio Mixer MultiMedia1     Off
408	BOOL	1	TERT_MI2S_RX Audio Mixer MultiMedia2     Off
409	BOOL	1	TERT_MI2S_RX Audio Mixer MultiMedia3     Off
410	BOOL	1	TERT_MI2S_RX Audio Mixer MultiMedia4     Off
411	BOOL	1	QUAT_MI2S_RX Audio Mixer MultiMedia1     Off
412	BOOL	1	QUAT_MI2S_RX Audio Mixer MultiMedia2     Off
413	BOOL	1	QUAT_MI2S_RX Audio Mixer MultiMedia3     Off
414	BOOL	1	QUAT_MI2S_RX Audio Mixer MultiMedia4     Off
415	BOOL	1	QUAT_MI2S_RX Audio Mixer MultiMedia5     Off
416	BOOL	1	QUAT_MI2S_RX Audio Mixer MultiMedia6     Off
417	BOOL	1	QUAT_MI2S_RX Audio Mixer MultiMedia7     Off
418	BOOL	1	QUAT_MI2S_RX Audio Mixer MultiMedia8     Off
419	BOOL	1	MI2S_RX Audio Mixer MultiMedia1          Off
420	BOOL	1	MI2S_RX Audio Mixer MultiMedia2          Off
421	BOOL	1	MI2S_RX Audio Mixer MultiMedia3          Off
422	BOOL	1	MI2S_RX Audio Mixer MultiMedia4          Off
423	BOOL	1	MI2S_RX Audio Mixer MultiMedia5          Off
424	BOOL	1	MI2S_RX Audio Mixer MultiMedia6          Off
425	BOOL	1	MI2S_RX Audio Mixer MultiMedia7          Off
426	BOOL	1	MI2S_RX Audio Mixer MultiMedia8          Off
427	BOOL	1	MI2S_RX Audio Mixer MultiMedia9          Off
428	BOOL	1	HDMI Mixer MultiMedia1                   Off
429	BOOL	1	HDMI Mixer MultiMedia2                   Off
430	BOOL	1	HDMI Mixer MultiMedia3                   Off
431	BOOL	1	HDMI Mixer MultiMedia4                   Off
432	BOOL	1	HDMI Mixer MultiMedia5                   Off
433	BOOL	1	HDMI Mixer MultiMedia6                   Off
434	BOOL	1	HDMI Mixer MultiMedia7                   Off
435	BOOL	1	HDMI Mixer MultiMedia8                   Off
436	BOOL	1	HDMI Mixer MultiMedia9                   Off
437	BOOL	1	SLIMBUS_0_RX Audio Mixer MultiMedia1     Off
438	BOOL	1	SLIMBUS_0_RX Audio Mixer MultiMedia2     Off
439	BOOL	1	SLIMBUS_0_RX Audio Mixer MultiMedia3     Off
440	BOOL	1	SLIMBUS_0_RX Audio Mixer MultiMedia4     Off
441	BOOL	1	SLIMBUS_0_RX Audio Mixer MultiMedia5     Off
442	BOOL	1	SLIMBUS_0_RX Audio Mixer MultiMedia6     Off
443	BOOL	1	SLIMBUS_0_RX Audio Mixer MultiMedia7     Off
444	BOOL	1	SLIMBUS_0_RX Audio Mixer MultiMedia8     Off
445	BOOL	1	SLIMBUS_0_RX Audio Mixer MultiMedia9     Off
446	BOOL	1	SLIMBUS_0_RX Audio Mixer MultiMedia10    Off
447	BOOL	1	SEC_RX Audio Mixer MultiMedia1           Off
448	BOOL	1	SEC_RX Audio Mixer MultiMedia2           Off
449	BOOL	1	SEC_RX Audio Mixer MultiMedia3           Off
450	BOOL	1	SEC_RX Audio Mixer MultiMedia4           Off
451	BOOL	1	SEC_RX Audio Mixer MultiMedia5           Off
452	BOOL	1	SEC_RX Audio Mixer MultiMedia6           Off
453	BOOL	1	SEC_RX Audio Mixer MultiMedia7           Off
454	BOOL	1	SEC_RX Audio Mixer MultiMedia8           Off
455	BOOL	1	SEC_RX Audio Mixer MultiMedia9           Off
456	BOOL	1	PRI_RX Audio Mixer MultiMedia1           Off
457	BOOL	1	PRI_RX Audio Mixer MultiMedia2           Off
458	BOOL	1	PRI_RX Audio Mixer MultiMedia3           Off
459	BOOL	1	PRI_RX Audio Mixer MultiMedia4           Off
460	BOOL	1	PRI_RX Audio Mixer MultiMedia5           Off
461	BOOL	1	PRI_RX Audio Mixer MultiMedia6           Off
462	BOOL	1	PRI_RX Audio Mixer MultiMedia7           Off
463	BOOL	1	PRI_RX Audio Mixer MultiMedia8           Off
464	BOOL	1	PRI_RX Audio Mixer MultiMedia9           Off
465	ENUM	1	SLIM_0_RX AANC MUX                       ZERO
466	ENUM	1	LSM1 MUX                                 None
467	BOOL	1	PCM_RX_DL_HL Switch                      Off
468	BOOL	1	SLIMBUS4_DL_HL Switch                    Off
469	BOOL	1	SLIMBUS3_DL_HL Switch                    Off
470	BOOL	1	SLIMBUS1_DL_HL Switch                    Off
471	BOOL	1	SLIMBUS_DL_HL Switch                     Off
472	BOOL	1	LINEOUT4_PA_MIXER AUX_PGA_R Switch       Off
473	BOOL	1	LINEOUT3_PA_MIXER AUX_PGA_L Switch       Off
474	BOOL	1	LINEOUT2_PA_MIXER AUX_PGA_R Switch       Off
475	BOOL	1	LINEOUT1_PA_MIXER AUX_PGA_L Switch       Off
476	BOOL	1	HPHR_PA_MIXER AUX_PGA_R Switch           Off
477	BOOL	1	HPHL_PA_MIXER AUX_PGA_L Switch           Off
478	BOOL	1	EAR_PA_MIXER AUX_PGA_L Switch            Off
479	ENUM	1	IIR2 INP1 MUX                            ZERO
480	ENUM	1	IIR1 INP1 MUX                            ZERO
481	ENUM	1	SLIM TX10 MUX                            ZERO
482	ENUM	1	SLIM TX9 MUX                             ZERO
483	ENUM	1	SLIM TX8 MUX                             ZERO
484	ENUM	1	SLIM TX7 MUX                             ZERO
485	ENUM	1	SLIM TX6 MUX                             ZERO
486	ENUM	1	SLIM TX5 MUX                             ZERO
487	ENUM	1	SLIM TX4 MUX                             ZERO
488	ENUM	1	SLIM TX3 MUX                             ZERO
489	ENUM	1	SLIM TX2 MUX                             ZERO
490	ENUM	1	SLIM TX1 MUX                             ZERO
491	BOOL	1	AIF3_CAP Mixer SLIM TX1                  Off
492	BOOL	1	AIF3_CAP Mixer SLIM TX2                  Off
493	BOOL	1	AIF3_CAP Mixer SLIM TX3                  Off
494	BOOL	1	AIF3_CAP Mixer SLIM TX4                  Off
495	BOOL	1	AIF3_CAP Mixer SLIM TX5                  Off
496	BOOL	1	AIF3_CAP Mixer SLIM TX6                  Off
497	BOOL	1	AIF3_CAP Mixer SLIM TX7                  Off
498	BOOL	1	AIF3_CAP Mixer SLIM TX8                  Off
499	BOOL	1	AIF3_CAP Mixer SLIM TX9                  Off
500	BOOL	1	AIF3_CAP Mixer SLIM TX10                 Off
501	BOOL	1	AIF2_CAP Mixer SLIM TX1                  Off
502	BOOL	1	AIF2_CAP Mixer SLIM TX2                  Off
503	BOOL	1	AIF2_CAP Mixer SLIM TX3                  Off
504	BOOL	1	AIF2_CAP Mixer SLIM TX4                  Off
505	BOOL	1	AIF2_CAP Mixer SLIM TX5                  Off
506	BOOL	1	AIF2_CAP Mixer SLIM TX6                  Off
507	BOOL	1	AIF2_CAP Mixer SLIM TX7                  Off
508	BOOL	1	AIF2_CAP Mixer SLIM TX8                  Off
509	BOOL	1	AIF2_CAP Mixer SLIM TX9                  Off
510	BOOL	1	AIF2_CAP Mixer SLIM TX10                 Off
511	BOOL	1	AIF1_CAP Mixer SLIM TX1                  Off
512	BOOL	1	AIF1_CAP Mixer SLIM TX2                  Off
513	BOOL	1	AIF1_CAP Mixer SLIM TX3                  Off
514	BOOL	1	AIF1_CAP Mixer SLIM TX4                  Off
515	BOOL	1	AIF1_CAP Mixer SLIM TX5                  Off
516	BOOL	1	AIF1_CAP Mixer SLIM TX6                  Off
517	BOOL	1	AIF1_CAP Mixer SLIM TX7                  Off
518	BOOL	1	AIF1_CAP Mixer SLIM TX8                  Off
519	BOOL	1	AIF1_CAP Mixer SLIM TX9                  Off
520	BOOL	1	AIF1_CAP Mixer SLIM TX10                 Off
521	BOOL	1	MADONOFF Switch                          Off
522	ENUM	1	ANC1 FB MUX                              ZERO
523	ENUM	1	ANC2 MUX                                 ZERO
524	ENUM	1	ANC1 MUX                                 ZERO
525	ENUM	1	DEC10 MUX                                ZERO
526	ENUM	1	DEC9 MUX                                 ZERO
527	ENUM	1	DEC8 MUX                                 ZERO
528	ENUM	1	DEC7 MUX                                 ZERO
529	ENUM	1	DEC6 MUX                                 ZERO
530	ENUM	1	DEC5 MUX                                 ZERO
531	ENUM	1	DEC4 MUX                                 ZERO
532	ENUM	1	DEC3 MUX                                 ZERO
533	ENUM	1	DEC2 MUX                                 ZERO
534	ENUM	1	DEC1 MUX                                 ZERO
535	ENUM	1	CLASS_H_DSM MUX                          ZERO
536	ENUM	1	RDAC7 MUX                                DEM6
537	ENUM	1	RDAC5 MUX                                DEM4
538	ENUM	1	RX7 MIX2 INP2                            ZERO
539	ENUM	1	RX7 MIX2 INP1                            ZERO
540	ENUM	1	RX2 MIX2 INP2                            ZERO
541	ENUM	1	RX2 MIX2 INP1                            ZERO
542	ENUM	1	RX1 MIX2 INP2                            ZERO
543	ENUM	1	RX1 MIX2 INP1                            ZERO
544	ENUM	1	RX7 MIX1 INP2                            ZERO
545	ENUM	1	RX7 MIX1 INP1                            ZERO
546	ENUM	1	RX6 MIX1 INP2                            ZERO
547	ENUM	1	RX6 MIX1 INP1                            ZERO
548	ENUM	1	RX5 MIX1 INP2                            ZERO
549	ENUM	1	RX5 MIX1 INP1                            ZERO
550	ENUM	1	RX4 MIX1 INP2                            ZERO
551	ENUM	1	RX4 MIX1 INP1                            ZERO
552	ENUM	1	RX3 MIX1 INP2                            ZERO
553	ENUM	1	RX3 MIX1 INP1                            ZERO
554	ENUM	1	RX2 MIX1 INP2                            ZERO
555	ENUM	1	RX2 MIX1 INP1                            ZERO
556	ENUM	1	RX1 MIX1 INP3                            ZERO
557	ENUM	1	RX1 MIX1 INP2                            ZERO
558	ENUM	1	RX1 MIX1 INP1                            ZERO
559	BOOL	1	HPHL DAC Switch                          Off
560	ENUM	1	SLIM RX7 MUX                             ZERO
561	ENUM	1	SLIM RX6 MUX                             ZERO
562	ENUM	1	SLIM RX5 MUX                             ZERO
563	ENUM	1	SLIM RX4 MUX                             ZERO
564	ENUM	1	SLIM RX3 MUX                             ZERO
565	ENUM	1	SLIM RX2 MUX                             ZERO
566	ENUM	1	SLIM RX1 MUX                             AIF1_PB
567	BOOL	1	DAC1 Switch                              Off
568	INT	1	Internal FM RX Volume                    0
569	BOOL	1	MultiMedia1 EQ Enable                    Off
570	BOOL	1	MultiMedia2 EQ Enable                    Off
571	BOOL	1	MultiMedia3 EQ Enable                    Off
572	INT	1	MultiMedia1 EQ Band Count                0
573	INT	1	MultiMedia2 EQ Band Count                0
574	INT	1	MultiMedia3 EQ Band Count                0
575	INT	5	MultiMedia1 EQ Band1                     0 0 0 0 0
576	INT	5	MultiMedia1 EQ Band2                     0 0 0 0 0
577	INT	5	MultiMedia1 EQ Band3                     0 0 0 0 0
578	INT	5	MultiMedia1 EQ Band4                     0 0 0 0 0
579	INT	5	MultiMedia1 EQ Band5                     0 0 0 0 0
580	INT	5	MultiMedia1 EQ Band6                     0 0 0 0 0
581	INT	5	MultiMedia1 EQ Band7                     0 0 0 0 0
582	INT	5	MultiMedia1 EQ Band8                     0 0 0 0 0
583	INT	5	MultiMedia1 EQ Band9                     0 0 0 0 0
584	INT	5	MultiMedia1 EQ Band10                    0 0 0 0 0
585	INT	5	MultiMedia1 EQ Band11                    61680 -252657286 49530 0 0
586	INT	5	MultiMedia1 EQ Band12                    0 0 0 0 0
587	INT	5	MultiMedia2 EQ Band1                     0 0 0 0 0
588	INT	5	MultiMedia2 EQ Band2                     0 0 0 0 0
589	INT	5	MultiMedia2 EQ Band3                     0 0 0 0 0
590	INT	5	MultiMedia2 EQ Band4                     0 0 0 0 0
591	INT	5	MultiMedia2 EQ Band5                     0 0 0 0 0
592	INT	5	MultiMedia2 EQ Band6                     0 0 0 0 0
593	INT	5	MultiMedia2 EQ Band7                     0 0 0 0 0
594	INT	5	MultiMedia2 EQ Band8                     0 0 0 0 0
595	INT	5	MultiMedia2 EQ Band9                     0 0 0 0 0
596	INT	5	MultiMedia2 EQ Band10                    0 0 0 0 0
597	INT	5	MultiMedia2 EQ Band11                    0 0 0 0 0
598	INT	5	MultiMedia2 EQ Band12                    0 0 0 0 0
599	INT	5	MultiMedia3 EQ Band1                     0 0 0 0 0
600	INT	5	MultiMedia3 EQ Band2                     0 0 0 0 0
601	INT	5	MultiMedia3 EQ Band3                     0 0 0 0 0
602	INT	5	MultiMedia3 EQ Band4                     0 0 0 0 0
603	INT	5	MultiMedia3 EQ Band5                     0 0 0 0 0
604	INT	5	MultiMedia3 EQ Band6                     0 0 0 0 0
605	INT	5	MultiMedia3 EQ Band7                     0 0 0 0 0
606	INT	5	MultiMedia3 EQ Band8                     0 0 0 0 0
607	INT	5	MultiMedia3 EQ Band9                     0 0 0 0 0
608	INT	5	MultiMedia3 EQ Band10                    0 0 0 0 0
609	INT	5	MultiMedia3 EQ Band11                    0 0 0 0 0
610	INT	5	MultiMedia3 EQ Band12                    0 0 0 0 0
611	INT	1	HIFI2 RX Volume                          0
612	INT	1	HIFI3 RX Volume                          0
613	INT	1	SRS TruMedia                             0
614	INT	1	SRS TruMedia HDMI                        0
615	INT	1	SRS TruMedia I2S                         0
616	INT	8	Playback Channel Map                     124 184 0 0 0 0 0 0
617	ENUM	1	SLIMBUS_0_TX LSM Function                None
618	ENUM	1	SLIMBUS_1_TX LSM Function                None
619	ENUM	1	SLIMBUS_2_TX LSM Function                None
620	ENUM	1	SLIMBUS_3_TX LSM Function                None
621	ENUM	1	SLIMBUS_4_TX LSM Function                None
622	ENUM	1	SLIMBUS_5_TX LSM Function                None
623	INT	19	SA data                                  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
624	INT	1	VSP data                                 0
625	INT	13	Audio DHA data                           0 0 0 0 0 0 0 0 0 0 0 0 0
626	INT	2	LRSM data                                0 0
627	INT	2	SA_EP data                               0 0
628	ENUM	1	AANC_SLIM_0_RX MUX                       ZERO
629	INT	1	DS1 Security                             0
630	INT	128	DS1 DAP Set Param                        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
631	INT	128	DS1 DAP Get Param                        -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
632	INT	41	DS1 DAP Get Visualizer                   -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
633	INT	1	DS1 DAP Endpoint                         0
634	ENUM	1	EC_REF_RX                                NONE
635	INT	1	Get RMS                                  -1
636	INT	1	Voc VSID                                 -1
637	ENUM	1	HDMI RX Format                           LPCM
638	INT	1	HDMI RX CA                               0
Failed to mixer_ctl_get_array
639	BYTE	0	HDMI EDID                               640	INT	8	Playback Channel Map0                    0 0 0 0 0 0 0 0
641	INT	8	Playback Channel Map1                    0 0 0 0 0 0 0 0
642	INT	1	Playback 4 Volume                        0
643	INT	2	Compress Playback 9 Volume               8192 8192
644	INT	128	Audio Effects Config 9                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
645	INT	8	Playback Channel Map15                   0 0 0 0 0 0 0 0
646	INT	2	Compress Playback 17 Volume              8192 8192
647	INT	128	Audio Effects Config 17                  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
648	INT	2	Compress Playback 18 Volume              8192 8192
649	INT	128	Audio Effects Config 18                  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
650	INT	1	Playback 19 Volume                       0
651	INT	1	Playback 24 Volume                       -1
652	INT	8	Playback Channel Map34                   0 0 0 0 0 0 0 0
653	ENUM	1	Speaker Function                         On
654	ENUM	1	SLIM_0_RX Channels                       One
655	ENUM	1	SLIM_0_TX Channels                       One
656	ENUM	1	AUX PCM SampleRate                      
657	ENUM	1	HDMI_RX Channels                         Two
658	ENUM	1	SLIM_0_RX Format                         S16_LE
659	ENUM	1	SLIM_0_RX SampleRate                     KHZ_48
660	ENUM	1	HDMI_RX Bit Format                       S16_LE
661	ENUM	1	PROXY_RX Channels                        Two
662	ENUM	1	Internal BTSCO SampleRate               
663	ENUM	1	HDMI_RX SampleRate                       KHZ_48
664	INT	1	Main Mic Delay                           0
root@klte:/data # 
</pre>