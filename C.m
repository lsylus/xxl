function [HX, HY, HXY, HX_Y, HY_X, IXY] =C(list)

    % �����Ե�ֲ� P(X) �� P(Y)
    px = sum(list, 2); % ��Y���, �õ�P(X)
    py = sum(list, 1); % ��X���, �õ�P(Y)

    % ɾ������ʣ��Ա������log(0)
    px = px(px ~= 0);
    py = py(py ~=  0);
    joint = list(list ~=  0);

    % ���� H(X), H(Y), H(X,Y)
    HX = -sum(px .* log2(px));       
    HY = -sum(py .* log2(py));        
    HXY = -sum(joint .* log2(joint));  

    % ���� H(X|Y) �� H(Y|X)
    HX_Y = HXY - HY;         
    HY_X = HXY - HX;         

  
    % ���� I(X,Y)
    IXY = HX -  HX_Y;


end
