text = open(r"C:\Users\zache\OneDrive\Documents\Data Analytics\MiSchoolData\csv_files\fte_students_info.csv", "r")
text = ''.join([i for i in text]) \
    .replace("*", "NULL")
x = open("output.csv","w")
x.writelines(text)
x.close()