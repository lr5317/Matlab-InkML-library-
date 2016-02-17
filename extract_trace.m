function [x,y] = extract_trace(s)

    %
    % [x,y] = extract_trace(s)
    %
    % Given an string in inkml trace format, extract_trace
    % extracts the x's and y's of the trace and returns them
    % in numerical vectors x and y. extract_trace is the inverse of
    % construct_trace.
    %
    % s: a string in inkml trace format
    %
    
    

    % Split the string.
    xycell = strsplit(s,',');

    % From the split string, put all the values into
    % arrays x and y.
    L = length(xycell);
    x = zeros(1,L);
    y = zeros(1,L);
    for i = 1:L
        xy = strsplit(xycell{i});
        if length(xy) == 2
            x(i) = str2num(xy{1});
            y(i) = str2num(xy{2});
        else
            x(i) = str2num(xy{2});
            y(i) = str2num(xy{3});
        end
    end           
end
