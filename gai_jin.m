% ��ȡExcel
List1 = xlsread('data1.xls'); 
List2 = xlsread('data2.xls'); 
% �����һ�����Ϸֲ����غͻ���Ϣ
[HX1, HY1, HXY1, HX_Y1, HY_X1, IXY1] = C(List1);
% ����ڶ������Ϸֲ����غͻ���Ϣ
[HX2, HY2, HXY2, HX_Y2, HY_X2, IXY2] = C(List2);

% ���
disp('For data1 ');
disp('H(X) = ');disp(HX1);
disp('H(Y) = ');disp(HY1);
disp('H(X, Y) = ');disp(HXY1);
disp('H(X|Y) = ');disp( HX_Y1);
disp('H(Y|X) = ');disp( HY_X1);
disp('I(X, Y) = ');disp(IXY1);

disp('For data2 ');
disp('H(X) = ');disp(HX2);
disp('H(Y) = ');disp(HY2);
disp('H(X, Y) = ');disp(HXY2);
disp('H(X|Y) = ');disp( HX_Y2);
disp('H(Y|X) = ');disp( HY_X2);
disp('I(X, Y) = ');disp(IXY2);