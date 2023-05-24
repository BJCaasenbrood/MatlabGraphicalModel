% convert all files to matcap_512x512 format
clr;

list = findnoprefix([],'matcap');
list = list(3:end);

for ii = 1:numel(list)
    name = list{ii};
    filename = name(1:end-4);

    try
        matcapformater(name,['matcap_512x512_',filename,'.jpg']);
    catch e
        disp(['Error in ', name]);
        disp(e);
    end

    disp(['Written filename ', filename,'!']);
end