#here is where events will be tracked every time the software runs
log_file = open("um-server-01.txt")


def sales_reports(log_file): #declaring a function called sales_reports with an argument of log_file
    for line in log_file:#for each line in the file do the following ...
        line = line.rstrip()#.rstrip will remove any spaces at the end of the string
        day = line[0:3]#only allows up to three numbers after the string?
        if day == "Mon":#printing only tuesday and changed to monday
            print(line)


sales_reports(log_file)
