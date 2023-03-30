% generate matcap files from img folder
clr;
folder = 'img';
files = findextension(folder,'.jpg');


for ii = 1:numel(files)

    % Open a file for writing
    imagename = files{ii}(16:end-4);
    functionname = ['matcap_',imagename,'.m'];

    %functionname = [];
    fid = fopen(functionname, 'w');

    % Write some text to the file
    fprintf(fid, ['function mcap = ', functionname(1:end-2), '\n']);
    fprintf(fid, ['  mcap = imread(''matcap_512x512_',                ...
        imagename,'.jpg''); \n']);
    fprintf(fid, 'end \n');

    % Close the file
    fclose(fid);

    disp(['Written ', functionname]);

end