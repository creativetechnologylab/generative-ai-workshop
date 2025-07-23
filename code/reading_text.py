import pytesseract
from PIL import Image

image = Image.open("receipt.png")
extracted_text = pytesseract.image_to_string(image)
print("Receipt contents:", extracted_text)
