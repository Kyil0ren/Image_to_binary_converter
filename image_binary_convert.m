path='C:\Users\spin29\Desktop\2_MATLAB_program_Deep_learning\data';%%enter the source directoy pathwhere the images are stored
num_folders=dir(path);
temp_s=0;
temp=0;
img=cell(0);
LengthFolders= length(num_folders);
t=double(0);
filename = 'C:\Users\spin29\Desktop\file_name.csv';%%enter the filename

LengthFolders_scaled= length(num_folders_scaled);
disp(num_folders_scaled)
for i = 1:LengthFolders
   if strcmp(num_folders(i).name,'.')||strcmp(num_folders(i).name,'..')||strcmp(num_folders_scaled(i).name,'.')||strcmp(num_folders_scaled(i).name,'..')
    else
        num_path=strcat(path,'\',num_folders(i).name);
        numbers=dir(num_path);
        LengthNumbers=length(numbers);
        for j = 1:LengthNumbers          
             if strcmp(numbers(j).name,'.')||strcmp(numbers(j).name,'..')||strcmp(numbers(j).name,'Desktop_1.ini')|| strcmp(numbers(j).name,'Desktop_2.ini')||strcmp(numbers(j).name,'Desktop_1_1.ini')|| strcmp(numbers(j).name,'Desktop_2_1.ini')
             else
                temp=temp+1;
                myImage=imread(strcat(num_path,'\',numbers(j).name));               
                rawimage = myImage;
                threshold = graythresh(rawimage);
                bw = imbinarize(rawimage,threshold);
               bw_new= reshape(bw.', 1, []) ;           
                dlmwrite(filename,bw_new,'-append');

             end
        end
   end
end








 