def read_file(file_path):
    with open(file_path, 'r') as file:
        return file.read().splitlines()

def extract_character(file_lines, char_index, width=8, height=16):
    start = (char_index - 1) * height
    end = char_index * height
    char_block = file_lines[start:end]
    ascii_art = []
    for line in char_block:
        if len(line.strip()) >= width:
            ascii_art.append(''.join(['●' if bit == '1' else ' ' for bit in line[:width]]))
    return ascii_art

def display_characters(file1, file2, char_index, width=8, height=16):
    char1 = extract_character(file1, char_index, width, height)
    char2 = extract_character(file2, char_index, width, height)
    
    print("Character from File 1:")
    print('\n'.join(char1))
    print("\nCharacter from File 2:")
    print('\n'.join(char2))

# Load files
file1_path = 'ascii5.txt'  # Replace with your actual file path
file2_path = 'new.txt'  # Replace with the second file path

file1_lines = read_file(file1_path)
file2_lines = read_file(file2_path)

# Interactive loop for user to select characters
while True:
    try:
        char_index = int(input("Enter character index (e.g., 130 for ก, 175 for ฮ, or 0 to quit): "))
        if char_index == 0:
            print("Exiting...")
            break
        display_characters(file1_lines, file2_lines, char_index)
    except Exception as e:
        print(f"Error: {e}")
