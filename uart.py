import serial
import matplotlib.pyplot as plt

ser = serial.Serial('COM3', 115200)

num_samples = 2000
samples = []
for _ in range(num_samples):
    s = ser.read(35)
    s = [x for x in s]
    s = s[1:]
    data = []
    for i in range(4):
        x = (s[2 * i + 3] << 8) + s[2 * i + 4]
        if x & 0x8000:
            x = ~x & 0xFFFF
        data.append(x)

    for i in range(11, 33):
        s[i] = ((s[i] << 1) + (s[i + 1] >> 7)) & 0xFF

    for i in range(4, 8):
        x = (s[2 * i + 6] << 8) + s[2 * i + 7]
        if x & 0x8000:
            x = ~x & 0xFFFF
        data.append(x)
    
    for i in range(22, 33):
        s[i] = ((s[i] << 1) + (s[i + 1] >> 7)) & 0xFF

    for i in range(8, 12):
        x = (s[2 * i + 9] << 8) + s[2 * i + 10]
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

# for _ in range(10):
#     s = ser.read(26)
#     s = [x for x in s]
#     print(s)