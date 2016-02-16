################################
#  09/21/2015
# FOUND AWESOME AND QUICK EXPLANATION ON HOW TO ENCODE AND DECODE BASE64 FILES.
# IT DOESN'T HAVE TO BE A PDF, IT CAN BE ANYTHING.
# http://stackoverflow.com/questions/1547008/how-to-encode-media-in-base64-given-url-in-ruby
################################
require 'base64'
# texto = Base64.encode64(File.open("/Users/angelhuezo/src/temp/PDF-Base64/Superman.pdf", "rb").read) # "rb" = read binary.
texto = Base64.encode64(File.open("/Users/angelhuezo/src/temp/PDF-Base64/ThisPDFToTextPlease.pdf", "rb").read) # "rb" = read binary.

texto = texto.gsub("\n","")

# PDF to Base64 text file:
# text_file = File.open("/Users/angelhuezo/src/temp/PDF-Base64/Superman.txt","w")
text_file = File.open("/Users/angelhuezo/src/temp/PDF-Base64/HereIsYourText.txt","w")
text_file.write(texto)
text_file.close

# Text of Base64 image to pdf:
###########################
# encoded_file = Base64.decode64(File.open("/Users/angelhuezo/src/temp/PDF-Base64/Superman.txt","r").read)
encoded_file = Base64.decode64(File.open("/Users/angelhuezo/src/temp/PDF-Base64/ThisTextToPDFPlease.txt","r").read)

# pdf_file = File.open("/Users/angelhuezo/src/temp/PDF-Base64/MillieMillie.pdf","w")
pdf_file = File.open("/Users/angelhuezo/src/temp/PDF-Base64/HereIsYourPDF.pdf","w")
pdf_file.write(encoded_file)
pdf_file.close

# Example 2

# encoded_file = Base64.decode64(File.open("/Users/angelhuezo/src/temp/PDF-Base64/kemah.txt","r").read)

# pdf_file = File.open("/Users/angelhuezo/src/temp/PDF-Base64/kemah.pdf","w")
# pdf_file.write(encoded_file)
# pdf_file.close
