# MSlocPRED
This MATLAB software package is used to predict subcellular localization of multi-labeled mRNAs.

The model in the file is uploaded using git lfs, if you need to download the full file content method:

git lfs install

git lfs clone git@github.com:ZBYnb1/MSlocPRED.git

Usage of this MATLAB software package:

(1) Prepare your sequence(s) file in fasta format and name it “example.txt”;
(2) Run the program “sliding.m” to intercept the fragment of length 70, and save the intercepted fragment in the Test.txt;
(3)"Test.txt" into the testsample folder, and "Text Output Image.py"  into the same directory, run "Text Output Image.py" , you can output "Test.txt" in  the testsample folder in the directory line by line into a picture.
(4) Run the program “test.m”to get the test results.

Please note:
(1) this software package only supports the 64-bit version of Windows operating system.
(2) The version of Python and libraries used by "Text Output Image.py":
- Python version used by the code: This code should be compatible with your version of Python, Python 3.x is recommended (e.g. Python 3.7 or later).
- Libraries used: The Image, ImageDraw, and ImageFont modules of the Pillow library are used to create and manipulate images.
- Use the following command to install the library in a terminal or command prompt:
  pip install Pillow.


If you have any questions, please contact us. 

Email: zuoyun@jiangnan.edu.cn
