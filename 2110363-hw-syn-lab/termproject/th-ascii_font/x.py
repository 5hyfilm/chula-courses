import os

def process_file(file_path):
    """
    Process a single file:
    1. Keep only the first 8 columns on the left.
    2. Extract the rightmost character of each column.
    3. Remove all spaces.
    """
    with open(file_path, 'r') as file:
        lines = file.readlines()

    processed_lines = []
    for line in lines:
        # Keep only the first 8 columns, split by whitespace
        columns = line.split()[:8]
        # Extract the rightmost character of each column
        rightmost_chars = ''.join([col[-1] if col else '' for col in columns])
        # Remove spaces (already done since we concatenate without spaces)
        processed_lines.append(rightmost_chars)

    return processed_lines

def process_folder(input_folder, output_folder):
    """
    Process all files in the folder.
    Save the processed results in the output folder.
    """
    os.makedirs(output_folder, exist_ok=True)

    for file_name in os.listdir(input_folder):
        input_file_path = os.path.join(input_folder, file_name)
        if os.path.isfile(input_file_path):
            # Process the file
            processed_lines = process_file(input_file_path)
            # Save the processed file
            output_file_path = os.path.join(output_folder, file_name)
            with open(output_file_path, 'w') as output_file:
                output_file.write('\n'.join(processed_lines))

# Input and output folder paths
input_folder = 'thai_16x16/fix'
output_folder = 'thai_16x16/new_fix'

# Process all files
process_folder(input_folder, output_folder)

print(f"All files have been processed and saved to: {output_folder}")
