import serial
import matplotlib.pyplot as plt

ser = serial.Serial('COM3', 115200)

num_samples = 2000
samples = []
for _ in range(num_samples):
    s = ser.read(24)
    s = [x for x in s]
    s = s[1:]
    data = []
    for i in range(4):
        x = (s[2 * i + 3] << 8) + s[2 * i + 4]
        if x & 0x8000:
            x = ~x & 0xFFFF
        data.append(x)

    print(s)

    for i in range(11, 22):
        s[i] = ((s[i] << 1) + (s[i + 1] >> 7)) & 0xFF

    for i in range(4, 8):
        x = (s[2 * i + 6] << 8) + s[2 * i + 7]
        if x & 0x8000:
            x = ~x & 0xFFFF
        data.append(x)
    
    samples.append(data)
    # print(s)

ch1 = [x[0] for x in samples]
ch2 = [x[1] for x in samples]
ch3 = [x[2] for x in samples]
ch4 = [x[3] for x in samples]
ch5 = [x[4] for x in samples]
ch6 = [x[5] for x in samples]
ch7 = [x[6] for x in samples]
ch8 = [x[7] for x in samples]

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

# for _ in range(10):
#     s = ser.read(26)
#     s = [x for x in s]
#     print(s)