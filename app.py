import os
import pandas as pd
win_path = 'C:\\Users\\MAQ USER\\Desktop\\Staging tables\\Data'
# get the windows files
file = os.listdir(win_path)
# get the dms reference file
# xl_col = openpyxl.load_workbook("C:\\Users\\MAQ USER\\Downloads\\dms vn Staging.xlsx")

df = pd.DataFrame(pd.read_excel("C:\\Users\\MAQ USER\\Downloads\\dms vn Staging.xlsx"))
# remove the .csv extension from files
file_ex = []
print("The files in windows directory are: ")
for i in file:
    file_ex.append(os.path.splitext(os.path.basename(i))[0])
print (file_ex)
# print("Table views present in windows file explorer is: \n{")
# count_files = len(file_ex)
# for num in file_ex:
#     print(num,end=", \n")
# print("}")
# print("\nThe cout of files are: ",count_files)

# Windows read code ends here ---> -X

# WAP to acees the columns in the excel and manipulate it to apply filter and edit like excel
# hint use pandas dataframe
# save the matching tables to csv file


# CHECKING THE DATAFRAME FOR VALUES
# print(df.head(30))
# print("\n\n\n")


# tESTING THE REMARKS COLUMN FOR VALUES
# print((df.get('REMARKS') == 'Need THUAN Feedback')[:30])
# print(df[df['REMARKS']=='Need THUAN Feedback'][:40])
# print(file_ex)

dms_cols = df[df['REMARKS']=='Need THUAN Feedback']
unmatched_cols = []
print("Matching cols are: \n")

try:
        for i in dms_cols["SNOWFLAKE_STG_TABLE"]:
            if i == file_ex:
                print(dms_cols["SNOWFLAKE_STG_TABLE"])
            else :
                unmatched_cols.append(i)
       
except ValueError:
        print("Count of the tables present in windows doesn;t equals to original dataset!")
        

    # else:
    #     unmatched_cols.append(dms_cols)
print("\nThe count of unmatched values are: ",len(unmatched_cols))
# print("The unmatched value is: ",unmatched_cols)
# print("\nThe unmatched columns are: ",unmatched_cols[0])









