import os
from PIL import Image, ImageDraw, ImageFont

def generate_images_from_text(directory):
    for root, dirs, files in os.walk(directory):
        txt_files = [file for file in files if file.endswith(".txt")]
        num = len(txt_files)
        for i, file in enumerate(txt_files):
            # 跳过每个目录中的第一个.txt文件
            #if num >1:
            #    if i == 0:
            #       continue

            with open(os.path.join(root, file), 'r', encoding='utf-8') as f:
                lines = f.read().splitlines()
                for j, line in enumerate(lines):
                    # 创建一个带透明背景的图片
                    img = Image.new('RGB', (2600, 120), color = (255, 255, 255))
                    d = ImageDraw.Draw(img)

                    # 设置字体和大小
                    font = ImageFont.truetype("arial.ttf", 45)
                    # 在图片上绘制文本
                    d.text((10, 10), line, fill=(0, 0, 0), font=font)
                    # 获取文本所占用的区域
                    text_width, text_height = d.textsize(line, font=font)
                    # 将图片缩小到文本所占用的大小
                    img = img.crop((0, 0, text_width + 20, text_height + 20))
                    # 保存图片为文件名+序号，保存到与源.txt文件相同的文件夹中
                    img.save(os.path.join(root, f"{file.split('.')[0]}_{j+1}.png"))


directory = os.getcwd()
generate_images_from_text(directory)
