function play(words)
% play函数 播放音频
[filename_cell] = convert(words);
disp(filename_cell);
file = '.\sound\empty.wav';
[speak, Fs] = audioread(file);	% 读取音频文件
for i = 1:length(filename_cell)
    file = ['.\sound\' filename_cell{i} '.wav'];   %#ok<*AGROW> % 音频文件名
    [next, Fs] = audioread(file);	% 读取音频文件
    speak = [speak;next];
end
audiowrite('.\output\output.wav',speak,Fs);   % 储存输出文件
[output, Fs] = audioread('.\output\output.wav');
sound(output, Fs);	% 播放音频文件
end