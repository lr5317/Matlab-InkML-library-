function [x,y] = get_trace_inkml(id, filename)

    %
    % function [x, y] = get_trace_inkml(id, filename)
    %
    % returns arrays x and y, the traces from an inkml file
    % id: numeric, an id of a trace in the inkml file
    % filename: string, filename of the inkml file
    %

    % Inititialize x and y.
    x = NaN;
    y = NaN;
    
    % Open file and get first line.
    fid = fopen(filename);
    tline = fgetl(fid);
    
    % Iterate through all the lines in the file.
    while ischar(tline)
        % If the length of the line is greater than 10 and if
        % the line specifies a trace id ...
        if length(tline) >= 10
            if strcmp(tline(1:10), '<trace id=')
                % disp(tline);
                % Split the line into a cell array and pull out the
                % trace id of the line.
                splitstring = strsplit(tline,'"');
                thisid = str2num(splitstring{2});
                % If this line's trace id matches id...
                if thisid == id 
                    % Get the next line (trace)...
                    tline = fgetl(fid);
                    % ... and extract the x and y values to arrays.
                    [x,y] = extract_trace(tline);                  
                end
            end
        end 
        % Get the next line for the outer while loop.
        tline = fgetl(fid);
    end
    % Close the file.
    fclose(fid);
    % If id wasn't matched up in the file, warn the user.
    if isnan(x)
        warningstring = ['trace id = "' mat2str(id) '" not found.'];
        warning(warningstring);
    end 
end
