function fle1_Lilly 
global x1NEW %make variables global in nature because nested function or not we can use it 
global y1NEW 
global x2NEW
global y2NEW
global x3NEW
global y3NEW
global x4NEW
global y4NEW
global x5NEW
global y5NEW
global x1Total
global y1Total

%%global N
global TimesZec
global Tstart
global Tstop
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% reads inkml file
inkmlDoc = xmlread('f1e1.inkml');

allTraces = inkmlDoc.getElementsByTagName('trace');
traceCount = allTraces.getLength;
firstTrace = allTraces.item(1).getTextContent;
%% where do these numbers come from? where does the 16.05 come from?
sscanf(char(firstTrace), '%f %f,')
%traceCell = cell(traceCount,1);
%traceCell
%A = 5;
%A = [1,2,3,4,5]

%% start iterating through the traces, and for each trace
%% grab the text from traceText
%% then we split the string by ',' character
%% now we need to turn the string into actual integers
%% in order to see the points
%% go through each pair of points (x,y)

%% parse for each i, allTraces.item(i).getContent to produce
%% a list of pair of numbers
%x =0:0.25:10;
%y = cos(x);
%plot(x,y, '+');
%plot(x,y)

traceid0 =[];
traceid1 =[];
traceid2 =[];
traceid3=[];
traceid4 =[];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = figure;
aH = axes('Xlim', [0,20], 'Ylim', [0,20]);
x1NEW = []; % intiialize global variable
y1NEW = []; % initialize global variable
x2NEW = [];
y2NEW = [];
x3NEW = []; 
y3NEW = [];
x4NEW = [];
y4NEW = [];
x5NEW = [];
y5NEW = []; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Display the picture first
x1 = [11.7004 11.7004 11.7004 11.7004 11.6844 11.6643 11.6322 11.5921 11.5319 11.4878 11.4476 11.4316 11.4396 11.4597 11.5118 11.568 11.6603 11.7446 11.8007 11.8248 11.8007 11.7526 11.6804 11.5921 11.5239];
y1 = [15.288 15.5288 15.15208 15.4887 15.4766 15.4686 15.4686 15.4766 15.4967 15.5328 15.585 15.6451 15.7174 15.7695 15.8097 15.8097 15.7816 15.7455 15.6853 15.6251 15.5569 15.5127 15.4967 15.5007 15.5368];
plot(x1,y1);
hold on
% plot(x1,y1,'ButtonDownFcn', @startDragFcn)
% C= get(gcf, 'CurrentPoint'); %I don't know what these 2 lines do
% title(gca, ['x1,y1) = (',num2str(C(1,1)),',',num2str(C(1,2)),')']);
x2 = [11.7847 11.7847 11.7847 11.7727 11.7606 11.7566 11.7365 11.7085 11.6643 11.5921 11.5439 11.5199 11.5159 11.5159 11.5199 11.5319];
y2 = [15.28  15.28 15.272  15.3081 15.3482 15.4405 15.597 15.4405 15.597 15.7735 15.93 16.0384 16.0985 16.1106 16.1026 16.0544];
plot(x2,y2);
% plot(x2,y2,'ButtonDownFcn',@startDragFcn)
x3 = [12.1217 12.1217 12.1137 12.1057 12.0937 12.0616 12.0134 11.9733 11.9412 11.9251 11.9372 11.9532 11.9853 12.0054 12.0295 12.0656];
y3 = [15.3924 15.3924 15.3603 15.3562 15.3603 15.3883 15.445 15.5408 15.6411 15.7495 15.8377 15.8939 15.934 15.9461 15.9501 15.93];
plot(x3,y3);
% plot(x3,y3,'ButtonDownFcn',@startDragFcn)
x4 = [12.1538 12.1538 12.1498 12.1498 12.1619 12.1699 12.1819 12.21 12.2301 12.2662 12.2983 12.3063 12.2903 12.2582 12.221 12.206 12.206 12.2261 12.2662 12.3264 12.3665 12.3866 12.3946 12.3906 12.3826 12.3665 12.3384 12.3264 12.3424 12.3665 12.4227 12.523];
y4 = [15.7254 15.7254 15.7174 15.7134 15.7093 15.7053 15.6933 15.6853 15.6853 15.7013 15.7294 15.7695 15.8177 15.8458 15.8698 15.8739 15.8658 15.8578 15.8297 15.7735 15.7294 15.7013 15.6893 15.6933 15.6973 15.7214 15.7575 15.8016 15.8377 15.8698 15.8779 15.8418];
plot(x4,y4);
% plot(x4,y4,'ButtonDownFcn',@startDragFcn)
x5 = [12.5832 12.5832 12.5792 12.5832 12.5992 12.6153 12.6554 12.6915 12.7116 12.7196 12.7076 12.6795 12.6434 12.5872];%% go in a clock wise fashion when drawing vertical line
y5 = [15.3442 15.3442 15.3282 15.3282 15.3442 15.3683 15.4365 15.5408 15.6612 15.8056 15.926 15.9942 16.0544 16.0825];
plot(x5,y5);
pause
% plot(x5,y5,'ButtonDownFcn',@startDragFcn)
%{
disp('List 1:')
str1 = '';
[rows,cols] = size(x1);
for k = 1:cols
    %%temp = str1;
    str1 = strcat(str1, '(', num2str(x1(k)), ' , ' , num2str(y1(k)),')');
end
disp(str1)

disp('List 2:')
str2 = '';
[rows,cols] = size(x2);
for k =1:cols
    str2 = strcat(str2, '(', num2str(x2(k)), ' , ', num2str(y2(k)), ')');
end
disp(str2)

disp('List 3:')
str3 = '';
[rows, cols] = size(x3);
for k =1:cols
    str3 = strcat(str3, '(',num2str(x3(k)), ',', num2str(y3(k)), ')');
end
disp(str3)

disp('List 4:')
str4 = '';
[rows,cols] = size(x4);
for k = 1:cols
    str4 =strcat(str4, '(', num2str(x4(k)), ',', num2str(y4(k)), ')');
end
disp(str4)

disp('List 5:')
str5 = ' ';
[rows, cols] = size(x5);
for k = 1:cols
    str5 = strcat(str5, '(', num2str(x5(k)), ',' , num2str(y5(k)), ')');
end
disp(str5)
%}


%1st Trace
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x1pt= x1(1,1);%draw a circle
y1pt= y1(1,1);
aH = axes('Xlim', [0,20], 'Ylim', [0,20]);
h = plot(x1pt,y1pt,'x','ButtonDownFcn',@startDragFcn);% defined
%%toc(Tstart)%%testing to see if value Tstart works 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%axis([0 20 0 20])
axis([10 15 14 16])%%original to the left just be more accurate on the arrays x1 y1 
set(f,'WindowButtonUpFcn', @stopDragFcn);

Tstart = tic;
function startDragFcn(varargin) 
set(f, 'WindowButtonMotionFcn', @draggingFcn)
end

function draggingFcn(varargin) 
pt = get(aH, 'CurrentPoint');%take mouse point and store into pt
%axis([0 20 0 20])
axis([10 15 14 16])% concatenates new pts of the array, empty array starts to fill up  
set(h, 'XData', pt(1,1), 'YData', pt(1,2));% updates mouse point 
x1NEW = [x1NEW pt(1,1)];% x location of mouse 
y1NEW = [y1NEW pt(1,2)]; %y location of mouse
end

%temp = toc; %surpresses whatever line is doing
%Times =cat( 1, Times,temp);


Tstop = toc(Tstart);%%feeding in results into global variables
%disp(Tstop)
disp(['Elapsed time is...',num2str(Tstop),'!'])
function stopDragFcn(varargin)
set(f, 'WindowButtonMotionFcn', '');
end
pause
clf

%hplot = plot(x1NEW,y1NEW);
%axis([0 20 0 20])
%hSlider = uicontrol('Style', 'slider',...
        %'Min',1,'Max',size(x1NEW,2),...
        %'SliderStep', [1 1], 'Value',1,...
        %'Position', [10 -10 420 20],...
        %'Callback', @slider1_Callback); 
    
%function slider1_Callback(source,callbackdata)
    %a = get(source,'Value');
    %plot(x1NEW(1:a),y1NEW(1:a))
    %axis([0 20 0 20])
%end

% 2nd trace
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x2pt =x2(1,1);%
y2pt =y2(1,1);
aH = axes('Xlim', [0,20], 'Ylim', [0,20]);
h = plot(x2pt,y2pt,'x','ButtonDownFcn',@startDragFcn2);

axis([10 15 14 16])%%original to the left just be more accurate on the arrays x1 y1 
set(f,'WindowButtonUpFcn', @stopDragFcn2);

Tstart = tic;
function startDragFcn2(varargin) 
set(f, 'WindowButtonMotionFcn', @draggingFcn2)
end

function draggingFcn2(varargin) 
pt = get(aH, 'CurrentPoint');%take mouse point and store into pt
%axis([0 20 0 20])
axis([10 15 14 16])
set(h, 'XData', pt(1,1), 'YData', pt(1,2));% updates mouse point 
x2NEW = [x2NEW pt(1,1)];% x location of mouse 
y2NEW = [y2NEW pt(1,2)]; %y location of mouse
end

%temp = toc; %surpresses whatever line is doing
%Times =cat( 1, Times,temp);


Tstop = toc(Tstart);%%feeding in results into global variables
%disp(Tstop)
disp(['Elapsed time is...',num2str(Tstop),'!'])
function stopDragFcn2(varargin)
set(f, 'WindowButtonMotionFcn', '');
end
pause
clf

%3rd Trace
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x3pt =x3(1,1);%Update these to the right starting point for this trace.
y3pt =y3(1,1);
aH = axes('Xlim', [0,20], 'Ylim', [0,20]);
h = plot(x3pt,y3pt,'x','ButtonDownFcn',@startDragFcn3);

axis([10 15 14 16])%%original to the left just be more accurate on the arrays x1 y1 
set(f,'WindowButtonUpFcn', @stopDragFcn3);

Tstart = tic;
function startDragFcn3(varargin) 
set(f, 'WindowButtonMotionFcn', @draggingFcn3)
end

function draggingFcn3(varargin) 
pt = get(aH, 'CurrentPoint');%take mouse point and store into pt
%axis([0 20 0 20])
axis([10 15 14 16])% concatenates new pts of the array, empty array starts to fill up  
set(h, 'XData', pt(1,1), 'YData', pt(1,2));% updates mouse point 
x3NEW = [x3NEW pt(1,1)];% x location of mouse 
y3NEW = [y3NEW pt(1,2)]; %y location of mouse
end

%temp = toc; %surpresses whatever line is doing
%Times =cat( 1, Times,temp);


Tstop = toc(Tstart);%%feeding in results into global variables
%disp(Tstop)
disp(['Elapsed time is...',num2str(Tstop),'!'])
function stopDragFcn3(varargin)
set(f, 'WindowButtonMotionFcn', '');
end
pause
clf

%4th Trace
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x4pt =x4(1,1);%Update these to the right starting point for this trace.
y4pt =y4(1,1);
aH = axes('Xlim', [0,20], 'Ylim', [0,20]);
h = plot(x4pt,y4pt,'x','ButtonDownFcn',@startDragFcn4);

axis([10 15 14 16])%%original to the left just be more accurate on the arrays x1 y1 
set(f,'WindowButtonUpFcn', @stopDragFcn4);

Tstart = tic;
function startDragFcn4(varargin) 
set(f, 'WindowButtonMotionFcn', @draggingFcn4)
end

function draggingFcn4(varargin) 
pt = get(aH, 'CurrentPoint');%take mouse point and store into pt
%axis([0 20 0 20])
axis([10 15 14 16])% concatenates new pts of the array, empty array starts to fill up  
set(h, 'XData', pt(1,1), 'YData', pt(1,2));% updates mouse point 
x4NEW = [x4NEW pt(1,1)];% x location of mouse 
y4NEW = [y4NEW pt(1,2)]; %y location of mouse
end

%temp = toc; %surpresses whatever line is doing
%Times =cat( 1, Times,temp);


Tstop = toc(Tstart);%%feeding in results into global variables
%disp(Tstop)
disp(['Elapsed time is...',num2str(Tstop),'!'])
function stopDragFcn4(varargin)
set(f, 'WindowButtonMotionFcn', '');
end
pause
clf

%5th Trace
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x5pt =x5(1,1); %Update these to the right starting point for this trace.
y5pt =y5(1,1);
aH = axes('Xlim', [0,20], 'Ylim', [0,20]);
h = plot(x5pt,y5pt,'x','ButtonDownFcn',@startDragFcn5);

axis([10 15 14 16])%%original to the left just be more accurate on the arrays x1 y1 
set(f,'WindowButtonUpFcn', @stopDragFcn5);

Tstart = tic;
function startDragFcn5(varargin) 
set(f, 'WindowButtonMotionFcn', @draggingFcn5)
end

function draggingFcn5(varargin) 
pt = get(aH, 'CurrentPoint');%take mouse point and store into pt
%axis([0 20 0 20])
axis([10 15 14 16])% concatenates new pts of the array, empty array starts to fill up  
set(h, 'XData', pt(1,1), 'YData', pt(1,2));% updates mouse point 
x5NEW = [x5NEW pt(1,1)];% x location of mouse 
y5NEW = [y5NEW pt(1,2)]; %y location of mouse
end

%temp = toc; %surpresses whatever line is doing
%Times =cat( 1, Times,temp);


Tstop = toc(Tstart);%%feeding in results into global variables
%disp(Tstop)
disp(['Elapsed time is...',num2str(Tstop),'!'])
function stopDragFcn5(varargin)
set(f, 'WindowButtonMotionFcn', '');
end
pause
clf


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%tic
plot(x1NEW,y1NEW)
hold on %saves the previos plot and plots new
%toc %% temp storing number that clock returns asks clock what it's doing and returns number total amount of time toc was executed
plot(x2NEW, y2NEW)
plot(x3NEW,y3NEW)
plot(x4NEW, y4NEW)
plot(x5NEW,y5NEW)

axis([10 15 14 16])
pause
clf
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%










%plot(x2,y2);
%plot(x2,y2,'ButtonDownFcn',@startDragFcn)
%set(gcf, 'WindowButtonMotionFcn');

%C = get(gcf,'CurrentPoint');
%title(gca, ['(x1,y1) = (', num2str(C(1,1)), ', ',num2str(C(1,2)), ')']);
%C= get(gcf,'CurrentPoint');
%title(gca,['(x2,y2) = (',num2str(C(1,1)),',',num2str(C(1,2)),')']);
%set(gcf,'WindowButtonMotionFcn');











%title(gca,['(x1,y1) = (',num2str(C(1,1), ',',num2str(C(1,2)), ')');
%outtrack = mousetrack(inmat);
%x1 = mousetrack('CurrentPoint');
%hold on
%plot(str1,'(',num2str(x1(k)),',',num2str(y1(k)),')');
%%function track(imagefig,varargins)
%global M
%global Nsamples
%for k=1:Nsamples
%temp = get('CurrentPoint')
%set(gcf, 'userdata',[get(gcf,'userdata'); [temp(132,132:176),0]]);
% end


x1Total = [x1NEW x2NEW x3NEW x4NEW x5NEW]; %sorry about that, I mean 'left aligned' square bracket meaning just [ -- not left[
y1Total = [y1NEW y2NEW y3NEW y4NEW y5NEW]; %Also CAPITILIZE all the 'New' to 'NEW' to be consistant with the rest of the file; typo on y5NEW
hplot = plot(x1Total,y1Total);
axis([10 15 14 16])
hSlider = uicontrol('Style', 'slider',...
        'Min',1,'Max',size(x1Total,2),...
        'SliderStep', [1 1], 'Value',1,...
        'Position', [10 10 420 20],...
        'Callback', @slider1_Callback); 
   
function slider1_Callback(source,callbackdata)
    a = get(source,'Value');
    plot(x1Total(1:a),y1Total(1:a))
    axis([10 15 14 16])
end
pause

%%function that records the key strokes that builds the file
%% Store pixels into an array
%%k = 1;
%%rgbfile1 = 1;
%%[x, y, numberOfStrokeChannels] = size(rgbfile1);
%%if numberOfStrokeChannels == 5
    %%for y = 1 : y
        %%for x = 1 : x
            %%array(k, 1) = rgbfile1(x, y, 1);
            %%array(k, 2) = rgbfile1(x, y, 2);
            %%array(k, 3) = rgbfile1(x, y, 3);
            %%array(k,4)  = rgbfile1(x,y,4);
            %%array(k,5) = rgbfile1(x,y,5);
            %%array(k, 6) = y;
            %%array(k, 7) = x;
            %%k = k + 1;
        %%end
   %% end
%%end




%%y = [10 5 4 48 25];
%%z = [0 0];
%for i = 0: allTraces.getLength
  %a = [x(i) y(i)];
  %line(a,z);
 %hold on
%end
%%for i = 0:allTraces.getLength
%%a = [x(11.7847)];
%%line(a,z);
%%hold on
%%end


%%end

%% x = [11.7847  15.2800];
%for k = 1:traceCount
%thisTrace = allTraces.item(k-1);
%the child is the text of the trace
%char() converts into a matlab string from a java string
%traceText = char(thisTrace.getFirstChild.getData);
%splitText = textscan(traceText,',');
%now make a matrix from the trace data to place in traceCell
%each matrix represents a seperate trace
%each matrix has 2 columns, one for x, one for y
% and also n rows, one for each point in the trace
%numPoints = length(splitText)-2;
%traceMat = zeros(numPoints,2);
%for j =1:numPoints
%the first and last elements of splitText are unimportant values
%offset indices for j
%pointData = strssplit(char(splitText(j+1)));
%xValue = str2double(pointData(2));
%yValue = str2double(pointData(3));
%traceMat(j,1) = xValue
%traceMat(j,2) = yValue
%end
%traceCell{k} = traceMat
%end
%xs = traceCell{1}(:,1)
%ys = traceCell{1}(:,2)
%randomIntegers = randi([-10,10], [20, 1])
%line([randomIntegers(4) randomIntegers(6)],[randomIntegers(8) randomIntegers(2)])
%line([randomIntegers(1) randomIntegers(2)], [randomIntegers(3) randomIntegers(4)])
%figure;
%scatter(xs,ys)
%scatter(1,5)





%disp(TimesZec)
end
