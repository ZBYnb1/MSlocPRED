import os
from PIL import Image, ImageDraw, ImageFont
def generate_images_from_text(directory):
    for root, dirs, files in os.walk(directory):
        txt_files = [file for file in files if file.endswith(".txt")]
        num = len(txt_files)
        for i, file in enumerate(txt_files):
            with open(os.path.join(root, file), 'r', encoding='utf-8') as f:
                lines = f.read().splitlines()
                for j, line in enumerate(lines):                    
                    img = Image.new('RGB', (3300, 120), color = (255, 255, 255))
                    d = ImageDraw.Draw(img)                  
                    font = ImageFont.truetype("arial.ttf", 45)
                    d.text((10, 10), line, fill=(0, 0, 0), font=font)
                    text_width, text_height = d.textsize(line, font=font)
                    img = img.crop((0, 0, text_width + 20, text_height + 20))
                    img.save(os.path.join(root, f"{file.split('.')[0]}_{j+1}.png"))
directory = os.getcwd()
generate_images_from_text(directory)
