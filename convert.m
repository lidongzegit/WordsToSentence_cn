function [pinyin_cell] = convert(words)
% convert函数

feature('DefaultCharacterSet', 'UTF8'); %以UTF-8格式打开文件

% 查找拼音
for i=1 : strlength(words)
    f = fopen('pinyin.txt');
    while ~feof(f)
        line = fgetl(f);
        if words(i) == line(1:1)
            pinyin_cell{i} = line(2:end); %#ok<*AGROW>
        end
    end
end