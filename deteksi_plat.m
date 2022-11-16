function varargout = deteksi_plat(varargin)
% DETEKSI_PLAT MATLAB code for deteksi_plat.fig
%      DETEKSI_PLAT, by itself, creates a new DETEKSI_PLAT or raises the existing
%      singleton*.
%
%      H = DETEKSI_PLAT returns the handle to a new DETEKSI_PLAT or the handle to
%      the existing singleton*.
%
%      DETEKSI_PLAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DETEKSI_PLAT.M with the given input arguments.
%
%      DETEKSI_PLAT('Property','Value',...) creates a new DETEKSI_PLAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before deteksi_plat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to deteksi_plat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help deteksi_plat

% Last Modified by GUIDE v2.5 15-Nov-2022 10:03:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @deteksi_plat_OpeningFcn, ...
                   'gui_OutputFcn',  @deteksi_plat_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before deteksi_plat is made visible.
function deteksi_plat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to deteksi_plat (see VARARGIN)

% Choose default command line output for deteksi_plat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes deteksi_plat wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = deteksi_plat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% TAMPILKAN GAMBAR PLAT KE GUI
[nama_file1, nama_path1]=uigetfile(...
{'*.bmp; *.jpg; *.png', 'File citra (*.bmp, *.jpg, *.png)';
'*.bmp', 'File Bitmap(*.bmp)';...
'*.jpg', 'File Jpeg(*.jpg)';...
'*.png', 'File Png(*.png)';...
'*.*', 'Semua File (*.*)'},... 
'Buka file citra asli');

if ~isequal(nama_file1, 0) 
    handles.data1=imread(fullfile(nama_path1, nama_file1)); 
    guidata(hObject, handles); 
    handles.current_data1=handles.data1; 
    axes(handles.axes1);
    imshow(handles.current_data1);
else
    return
end 

%MUAT CITRA PEMBANDING (0-9, A-Z)
A=imread('alpha/A.bmp');A2=imread('alpha/fillA.bmp');
B=imread('alpha/B.bmp');B2=imread('alpha/fillB.bmp');
C=imread('alpha/C.bmp');
D=imread('alpha/D.bmp');D2=imread('alpha/fillD.bmp');
E=imread('alpha/E.bmp');F=imread('alpha/F.bmp');
G=imread('alpha/G.bmp');H=imread('alpha/H.bmp');I=imread('alpha/I.bmp');
J=imread('alpha/J.bmp');K=imread('alpha/K.bmp');L=imread('alpha/L.bmp');
M=imread('alpha/M.bmp');N=imread('alpha/N.bmp');
O=imread('alpha/O.bmp');O2=imread('alpha/fillO.bmp');
P=imread('alpha/P.bmp');P2=imread('alpha/fillP.bmp');
Q=imread('alpha/Q.bmp');Q2=imread('alpha/fillQ.bmp');
R=imread('alpha/R.bmp');R2=imread('alpha/fillR.bmp');
S=imread('alpha/S.bmp');T=imread('alpha/T.bmp');U=imread('alpha/U.bmp');
V=imread('alpha/V.bmp');W=imread('alpha/W.bmp');X=imread('alpha/X.bmp');
Y=imread('alpha/Y.bmp');Z=imread('alpha/Z.bmp');

one=imread('alpha/1.bmp');two=imread('alpha/2.bmp');
three=imread('alpha/3.bmp');
four=imread('alpha/4.bmp');four2=imread('alpha/fill4.bmp');
five=imread('alpha/5.bmp'); 
six=imread('alpha/6.bmp');six2=imread('alpha/fill6.bmp');six3=imread('alpha/fill6_2.bmp');
seven=imread('alpha/7.bmp');
eight=imread('alpha/8.bmp');eight2=imread('alpha/fill8.bmp');
nine=imread('alpha/9.bmp');nine2=imread('alpha/fill9.bmp');nine3=imread('alpha/fill9_2.bmp');  
zero=imread('alpha/0.bmp');zero2=imread('alpha/fill0.bmp');

%membuat array yang menampung data citra A-Z0-9
character=[A A2 B B2 C D D2 E F G H I J K L M...
    N O O2 P P2 Q Q2 R R2 S T U V W X Y Z... 
    one two three four four2 five...
    six six2 six3 seven eight eight2 nine nine2 nine3 zero zero2];

NewTemplates=mat2cell(character,42,[24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24]);

save ('NewTemplates','NewTemplates')
clear all

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

im = handles.data1;
imgray = rgb2gray(im);
axes(handles.axes3);
imshow(imgray);

imbin = imbinarize(imgray);
axes(handles.axes4);
imshow(imbin);

im = edge(imgray, 'prewitt');

%Below steps are to find location of number plate
Iprops=regionprops(im,'BoundingBox','Area', 'Image');
axes(handles.axes5);
imshow(im);
hold on

area = Iprops.Area;
count = numel(Iprops);
maxa= area;
boundingBox = Iprops.BoundingBox;
for i=1:count
   if maxa<Iprops(i).Area
       maxa=Iprops(i).Area;
       boundingBox=Iprops(i).BoundingBox;
       rectangle('Position', [boundingBox(1),boundingBox(2),boundingBox(3),boundingBox(4)],'EdgeColor','r','LineWidth',2) ;
   end
end    
hold off

im = imcrop(imbin, boundingBox);%crop bagian plat nomor
im = bwareaopen(~im, 200); %hilangkan objek yang memiliki width terlalu panjang/terlalu kecil < 500

[h, w] = size(im);%get width

Iprops=regionprops(im,'BoundingBox','Area', 'Image'); %read letter
axes(handles.axes2);
imshow(im);
hold on

count = numel(Iprops);
noPlate=[]; % Initializing the variable of number plate string.

boundingBox = Iprops.BoundingBox;
for i=1:count
   ow = length(Iprops(i).Image(1,:));
   oh = length(Iprops(i).Image(:,1));
   display(ow)
   if (ow<(w/2)& ow>12) & (oh>(h/3)&oh>24)
       boundingBox=Iprops(i).BoundingBox;
       rectangle('Position', [boundingBox(1),boundingBox(2),boundingBox(3),boundingBox(4)],'EdgeColor','r','LineWidth',2) ;
       
       letter=Letter_detection(Iprops(i).Image); % membaca tiap karakter dak memprediksi huruf apa itu
       noPlate=[noPlate letter] % tambahkan letter hasil prediksi ke array noplat
       
       text(boundingBox(1)+boundingBox(3)/2,boundingBox(2)+boundingBox(4)+10,letter,'HorizontalAlignment','center','Color', 'r','FontSize',18)
   end
end
hold off

set(handles.edit1, 'String', noPlate); 

function letter=Letter_detection(snap)

load NewTemplates 
snap=imresize(snap,[42 24]); 
rec=[ ];

for n=1:length(NewTemplates)
    cor=corr2(NewTemplates{1,n},snap); 
    rec=[rec cor]; 
end

ind=find(rec==max(rec));
display(ind);

% Alphabets listings.
if ind==1 || ind==2
    letter='A';
elseif ind==3 || ind==4
    letter='B';
elseif ind==5
    letter='C';
elseif ind==6 || ind==7
    letter='D';
elseif ind==8
    letter='E';
elseif ind==9
    letter='F';
elseif ind==10
    letter='G';
elseif ind==11
    letter='H';
elseif ind==12
    letter='I';
elseif ind==13
    letter='J';
elseif ind==14
    letter='K';
elseif ind==15
    letter='L';
elseif ind==16
    letter='M';
elseif ind==17
    letter='N';
elseif ind==18 || ind==19
    letter='O';
elseif ind==20 || ind==21
    letter='P';
elseif ind==22 || ind==23
    letter='Q';
elseif ind==24 || ind==25
    letter='R';
elseif ind==26
    letter='S';
elseif ind==27
    letter='T';
elseif ind==28
    letter='U';
elseif ind==29
    letter='V';
elseif ind==30
    letter='W';
elseif ind==31
    letter='X';
elseif ind==32
    letter='Y';
elseif ind==33
    letter='Z';
    %*-*-*-*-*
% Numerals listings.
elseif ind==34
    letter='1';
elseif ind==35
    letter='2';
elseif ind==36
    letter='3';
elseif ind==37 || ind==38
    letter='4';
elseif ind==39
    letter='5';
elseif ind==40 || ind==41 || ind==42
    letter='6';
elseif ind==43
    letter='7';
elseif ind==44 || ind==45
    letter='8';
elseif ind==46 || ind==47 || ind==48
    letter='9';
else
    letter='0';
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

im = handles.data1;
imgray = rgb2gray(im);
axes(handles.axes3);
imshow(imgray);

imbin = imbinarize(imgray);
axes(handles.axes4);
imshow(imbin);

im = edge(imgray, 'prewitt');

%Below steps are to find location of number plate
Iprops=regionprops(im,'BoundingBox','Area', 'Image');
axes(handles.axes5);
imshow(im);
hold on

area = Iprops.Area;
count = numel(Iprops);
maxa= area;
boundingBox = Iprops.BoundingBox;
for i=1:count
   if maxa<Iprops(i).Area
       maxa=Iprops(i).Area;
       boundingBox=Iprops(i).BoundingBox;
       rectangle('Position', [boundingBox(1),boundingBox(2),boundingBox(3),boundingBox(4)],'EdgeColor','r','LineWidth',2) ;
   end
end    
hold off

im = imcrop(imbin, boundingBox);%crop bagian plat nomor
im_dis = imcrop(handles.data1, boundingBox);

ocrResults = ocr(im)

display(ocrResults.Words)
if length(ocrResults.Words)~=0
    result     = insertObjectAnnotation(im_dis, 'rectangle',...
            ocrResults.WordBoundingBoxes, ...
            ocrResults.WordConfidences);
    rr=(regexprep(ocrResults.Text,'\s+',''));
    
    axes(handles.axes2);
    imshow(result);

    set(handles.edit1,'String', rr);
else
    axes(handles.axes2);
    imshow(im_dis);
    set(handles.edit1,'String', 'Tidak Terdeteksi');
end
