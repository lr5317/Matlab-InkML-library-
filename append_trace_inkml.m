function append_trace_inkml(x, y, id, filename)

    %
    % function apend_trace_inkml(x, y, id, filename)
    %
    % Takes two vectors of numbers x and y representing a trace
    % and appends the trace (specified by id) in the inkml file 
    % specified by filename.
    %
    % x: a vector
    % y: a vector, same length as x
    % id: numeric, an id of a trace in the inkml file
    % infile: string, filename of the inkml file
    %
   
    % Open read file and new to write to.
    fid = fopen(filename);
    filenamew = ['new_', filename];
    fidnew = fopen(filenamew,'w');
    
    % get first line.
    tline = fgets(fid);
    
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
                    
                    % Get the next line.
                    tline = fgets(fid);
                    
                    % Strip off the last character (new line).
                    tline = tline(1:end-2);
                    
                    % Then, construct a trace line in inkml format.
                    trace_string = construct_trace(x,y);
                    
                    % Append the trace string onto the line, along
                    % with a new line.
                    write_string = [tline, ', ', trace_string, '\n'];
                    
                    % Write the appended trace to the new file.
                    fprintf(fidnew,write_string);
                     
                else
                    
                    % Otherwise, write line to new file.
                    fprintf(fidnew,tline);
                    
                end
                
            else
                
                % Otherwise, write line to new file.
                fprintf(fidnew,tline);
                
            end
        else
            % Otherwise, write line to new file.
            fprintf(fidnew,tline);
            
        end 
        % Get the next line for the outer while loop.
        tline = fgets(fid);
        %tline
    end
    % Close both files.
    fclose(fid);
    fclose(fidnew);
    % If id wasn't matched up in the file, warn the user.
    if isnan(x)
        warningstring = ['trace id = "' mat2str(id) '" not found.'];
        warning(warningstring);
    end 
end
