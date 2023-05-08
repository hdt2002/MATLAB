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
        % Chuyen lai chuoi nhi ph�n th�nh file nhac
        binary = reshape(binary, 16, []).'; % t�ch chuoi nhi ph�n th�nh c�c chuoi bit nhi ph�n con do d�i 16 bit
        y = bin2dec(binary); % chuyen c�c chuoi bit nhi ph�n con th�nh c�c so nguy�n
        y = double(y) / 32767; % chuyen doi c�c so nguy�n th�nh du lieu �m thanh
        audio = int16(y * (2^15 - 1)); % chuyen doi du lieu �m thanh sang dang so nguy�n
        audiowrite('output.wav', audio, Fs); % ghi du lieu �m thanh ra file
    end
 
    % X�c dinh th�ng tin ve file nhac
    info = audioinfo('AssigmentD20.wav');
    disp(info);
    info_output = audioinfo('output.wav');
    disp(info_output);
 
    % Chuyen doi file nhac th�nh chuoi nhi ph�n
    binary = audioToBinary('AssigmentD20.wav');
    fid = fopen('binary_data.bin', 'wb');
    fwrite(fid, binary, 'char');
    fclose(fid);
 
    % Chuyen doi chuoi nhi ph�n th�nh file nhac v� luu lai v�o file 'output.wav'
    binary = audioToBinary('AssigmentD20.wav');
    audio = binaryToAudio(binary, info.SampleRate);
    fid = fopen('audio_data.bin', 'wb');
    fwrite(fid, audio, 'int16');
    fclose(fid);
end
