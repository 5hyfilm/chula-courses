import os

# Function to process a single file
def process_file(file_path, output_folder):
    # Read the file
    with open(file_path, 'r') as file:
        lines = file.readlines()

    # Process each line: remove extra spaces, keep only the first 8 columns, and remove spaces between characters
    processed_lines = []
    for line in lines:
        # Split by whitespace, keep the first 8 columns, remove all spaces in the result
        columns = line.split()[:8]
        processed_line = ''.join(columns)  # Remove spaces between characters
        processed_lines.append(processed_line)

    # Save the processed file in the output folder
    output_file_path = os.path.join(output_folder, os.path.basename(file_path))
    with open(output_file_path, 'w') as file:
        file.write('\n'.join(processed_lines))

# Function to process all files in a folder
def process_folder(input_folder, output_folder):
    # Ensure the output folder exists
    os.makedirs(output_folder, exist_ok=True)

    # Process each file in the input folder
    for file_name in os.listdir(input_folder):
        file_path = os.path.join(input_folder, file_name)
        if os.path.isfile(file_path):  # Ensure it's a file
            process_file(file_path, output_folder)

# Input and output folder paths
input_folder = 'f'
output_folder = 'fixkuy'

# Process all files in the folder
process_folder(input_folder, output_folder)

print(f"All files have been processed and saved to: {output_folder}")
