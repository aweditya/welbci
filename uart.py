import serial
import matplotlib.pyplot as plt

ser = serial.Serial('COM3', 115200)

num_samples = 1000
samples = []
for _ in range(num_samples):
    s = ser.read(68)
    s = [x for x in s]
    s = s[1:]
    data = []

    for i in range(0, 4):
        x = (s[2 * i + 3] << 8) + s[2 * i + 4]
        if x & 0x8000:
            x = ~x & 0xFFFF
        data.append(x)

    for i in range(11, 66):
        s[i] = ((s[i] << 1) + (s[i + 1] >> 7)) & 0xFF

    for i in range(4, 8):
        x = (s[2 * i + 6] << 8) + s[2 * i + 7]
        if x & 0x8000:
            x = ~x & 0xFFFF
        data.append(x)
    
    for i in range(22, 66):
        s[i] = ((s[i] << 1) + (s[i + 1] >> 7)) & 0xFF

    for i in range(8, 12):
        x = (s[2 * i + 9] << 8) + s[2 * i + 10]
        if x & 0x8000:
            x = ~x & 0xFFFF
        data.append(x)

    for i in range(33, 66):
        s[i] = ((s[i] << 1) + (s[i + 1] >> 7)) & 0xFF

    for i in range(12, 16):
        x = (s[2 * i + 12] << 8) + s[2 * i + 13]
        if x & 0x8000:
            x = ~x & 0xFFFF
        data.append(x)

    for i in range(44, 66):
        s[i] = ((s[i] << 1) + (s[i + 1] >> 7)) & 0xFF

    for i in range(16, 20):
        x = (s[2 * i + 15] << 8) + s[2 * i + 16]
        if x & 0x8000:
            x = ~x & 0xFFFF
        data.append(x)

    for i in range(55, 66):
        s[i] = ((s[i] << 1) + (s[i + 1] >> 7)) & 0xFF

    for i in range(20, 24):
        x = (s[2 * i + 18] << 8) + s[2 * i + 19]
        if x & 0x8000:
            x = ~x & 0xFFFF
        data.append(x)

    samples.append(data)
    print(s)

ch1 = [x[0] for x in samples]
ch2 = [x[1] for x in samples]
ch3 = [x[2] for x in samples]
ch4 = [x[3] for x in samples]
ch5 = [x[4] for x in samples]
ch6 = [x[5] for x in samples]
ch7 = [x[6] for x in samples]
ch8 = [x[7] for x in samples]
ch9 = [x[8] for x in samples]
ch10 = [x[9] for x in samples]
ch11 = [x[10] for x in samples]
ch12 = [x[11] for x in samples]
ch13 = [x[12] for x in samples]
ch14 = [x[13] for x in samples]
ch15 = [x[14] for x in samples]
ch16 = [x[15] for x in samples]
ch17 = [x[16] for x in samples]
ch18 = [x[17] for x in samples]
ch19 = [x[18] for x in samples]
ch20 = [x[19] for x in samples]
ch21 = [x[20] for x in samples]
ch22 = [x[21] for x in samples]
ch23 = [x[22] for x in samples]
ch24 = [x[23] for x in samples]

fig, axs = plt.subplots(2, 2)
axs[0, 0].plot(ch1)
axs[0, 0].set_title('Channel 1')
# axs[0, 0].set_ylim((-32768, 32767))

axs[0, 1].plot(ch2)
axs[0, 1].set_title('Channel 2')
# axs[0, 1].set_ylim((-32768, 32767))

axs[1, 0].plot(ch3)
axs[1, 0].set_title('Channel 3')
# axs[1, 0].set_ylim((-32768, 32767))

axs[1, 1].plot(ch4)
axs[1, 1].set_title('Channel 4')
# axs[1, 1].set_ylim((-32768, 32767))
plt.show()

fig, axs = plt.subplots(2, 2)
axs[0, 0].plot(ch5)
axs[0, 0].set_title('Channel 5')
# axs[0, 0].set_ylim((-32768, 32767))

axs[0, 1].plot(ch6)
axs[0, 1].set_title('Channel 6')
# axs[0, 1].set_ylim((-32768, 32767))

axs[1, 0].plot(ch7)
axs[1, 0].set_title('Channel 7')
# axs[1, 0].set_ylim((-32768, 32767))

axs[1, 1].plot(ch8)
axs[1, 1].set_title('Channel 8')
# axs[1, 1].set_ylim((-32768, 32767))
plt.show()

fig, axs = plt.subplots(2, 2)
axs[0, 0].plot(ch9)
axs[0, 0].set_title('Channel 9')
# axs[0, 0].set_ylim((-32768, 32767))

axs[0, 1].plot(ch10)
axs[0, 1].set_title('Channel 10')
# axs[0, 1].set_ylim((-32768, 32767))

axs[1, 0].plot(ch11)
axs[1, 0].set_title('Channel 11')
# axs[1, 0].set_ylim((-32768, 32767))

axs[1, 1].plot(ch12)
axs[1, 1].set_title('Channel 12')
# axs[1, 1].set_ylim((-32768, 32767))
plt.show()

fig, axs = plt.subplots(2, 2)
axs[0, 0].plot(ch13)
axs[0, 0].set_title('Channel 13')
# axs[0, 0].set_ylim((-32768, 32767))

axs[0, 1].plot(ch14)
axs[0, 1].set_title('Channel 14')
# axs[0, 1].set_ylim((-32768, 32767))

axs[1, 0].plot(ch15)
axs[1, 0].set_title('Channel 15')
# axs[1, 0].set_ylim((-32768, 32767))

axs[1, 1].plot(ch16)
axs[1, 1].set_title('Channel 16')
# axs[1, 1].set_ylim((-32768, 32767))
plt.show()

fig, axs = plt.subplots(2, 2)
axs[0, 0].plot(ch17)
axs[0, 0].set_title('Channel 17')
# axs[0, 0].set_ylim((-32768, 32767))

axs[0, 1].plot(ch18)
axs[0, 1].set_title('Channel 18')
# axs[0, 1].set_ylim((-32768, 32767))

axs[1, 0].plot(ch19)
axs[1, 0].set_title('Channel 19')
# axs[1, 0].set_ylim((-32768, 32767))

axs[1, 1].plot(ch20)
axs[1, 1].set_title('Channel 20')
# axs[1, 1].set_ylim((-32768, 32767))
plt.show()

fig, axs = plt.subplots(2, 2)
axs[0, 0].plot(ch21)
axs[0, 0].set_title('Channel 21')
# axs[0, 0].set_ylim((-32768, 32767))

axs[0, 1].plot(ch22)
axs[0, 1].set_title('Channel 22')
# axs[0, 1].set_ylim((-32768, 32767))

axs[1, 0].plot(ch23)
axs[1, 0].set_title('Channel 23')
# axs[1, 0].set_ylim((-32768, 32767))

axs[1, 1].plot(ch24)
axs[1, 1].set_title('Channel 24')
# axs[1, 1].set_ylim((-32768, 32767))
plt.show()

# for _ in range(10):
#     s = ser.read(26)
#     s = [x for x in s]
#     print(s)