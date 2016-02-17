function s = construct_trace(x,y)

    %
    % x = construct_trace(x,y)
    %
    % Given numerical arrays x and y of the same length, 
    % construct_trace constucts a string representation of x and y
    % in inkml trace format. construct_trace is the inverse of 
    % extract_trace.
    %
    % x: a numerical vector of same length as y
    % y: a numerical vector of same length as x
    %
   
    L = length(x);
    s = '';
    for i = 1:L
        if i ~= L
            this_s = [num2str(x(i)), ' ', num2str(y(i)), ', '];
        else
            this_s = [num2str(x(i)), ' ', num2str(y(i))];
        end
        s = [s, this_s];
    end
end
