def binary_to_ascii_art_all(binary_lines, width=8, height=16):
    ascii_arts = []
    for i in range(0, len(binary_lines), height):
        character_block = binary_lines[i:i + height]
        if len(character_block) < height:
            continue
        char_art = []
        for line in character_block:
            if len(line.strip()) >= width:
                # Convert the line to binary and map to ASCII art
                char_row = ''.join(['●' if bit == '1' else ' ' for bit in line[:width]])
                char_art.append(char_row)
        ascii_arts.append('\n'.join(char_art))
    return ascii_arts

# Read the file content and filter valid binary lines
with open('comb_thai_8x16.txt', 'r') as file:
    binary_lines = file.read().splitlines()

# Filter lines with data
binary_lines_filtered = [line.strip() for line in binary_lines if line.strip()]

# Convert the binary lines to ASCII art
ascii_art_characters = binary_to_ascii_art_all(binary_lines_filtered)

# Display each character with a separator
for idx, art in enumerate(ascii_art_characters):
    print(f"Character {idx + 1}:\n{art}\n{'-' * 20}\n")
