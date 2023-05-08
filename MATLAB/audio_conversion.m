function audio_conversion()

   function binary = audioToBinary(filename)
    % Chuyen doi file nhac thanh chuoi nhi phan
    [y, Fs] = audioread(filename); % ?oc du lieu tu file nhac
    y = round((y + 1) * (2^15-1)); % Bien doi gia tri y thanh gia tri nguyen duong trong khoang tu 0 den 2^16-1
    binary = dec2bin(y, 16); % Chuyen doi cac gia tri nguyen thanh chuoi bit nhi phan do dai 16 bit
    binary = binary.'; % Chuyen ve ma tran de ghep cac chuoi bit nhi phan
    binary = binary(:).'; % Ghep cac chuoi bit nhi phan lai thanh mot chuoi duy nhat
end
 
    function audio = binaryToAudio(binary, Fs)
        % Chuyen lai chuoi nhi phân thành file nhac
        binary = reshape(binary, 16, []).'; % tách chuoi nhi phân thành các chuoi bit nhi phân con do dài 16 bit
        y = bin2dec(binary); % chuyen các chuoi bit nhi phân con thành các so nguyên
        y = double(y) / 32767; % chuyen doi các so nguyên thành du lieu âm thanh
        audio = int16(y * (2^15 - 1)); % chuyen doi du lieu âm thanh sang dang so nguyên
        audiowrite('output.wav', audio, Fs); % ghi du lieu âm thanh ra file
    end
 
    % Xác dinh thông tin ve file nhac
    info = audioinfo('AssigmentD20.wav');
    disp(info);
    info_output = audioinfo('output.wav');
    disp(info_output);
 
    % Chuyen doi file nhac thành chuoi nhi phân
    binary = audioToBinary('AssigmentD20.wav');
    fid = fopen('binary_data.bin', 'wb');
    fwrite(fid, binary, 'char');
    fclose(fid);
 
    % Chuyen doi chuoi nhi phân thành file nhac và luu lai vào file 'output.wav'
    binary = audioToBinary('AssigmentD20.wav');
    audio = binaryToAudio(binary, info.SampleRate);
    fid = fopen('audio_data.bin', 'wb');
    fwrite(fid, audio, 'int16');
    fclose(fid);
end
