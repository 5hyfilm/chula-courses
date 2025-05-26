import os

# Function to combine all files in a folder into a single file
def combine_files(input_folder, output_file):
    with open(output_file, 'w') as output:
        # Loop through each file in the input folder
        for file_name in os.listdir(input_folder):
            file_path = os.path.join(input_folder, file_name)
            if os.path.isfile(file_path):  # Check if it's a file
                # Read the content of the file
                with open(file_path, 'r') as input_file:
                    content = input_file.read()
                    # Write the content to the output file
                    output.write(content + '\n')  # Add a newline between files for clarity

# Input folder and output file path
input_folder = 'สระ2'
output_file = 'comb_thai_8x16_2.txt'

# Combine files
combine_files(input_folder, output_file)

print(f"All files have been combined and saved to: {output_file}")
