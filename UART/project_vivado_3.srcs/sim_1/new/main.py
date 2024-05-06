text = "alamapsaidwakoty"

with open("input_file.bin", 'w') as f:
    f.write(''.join(format(ord(x), 'b') for x in text))