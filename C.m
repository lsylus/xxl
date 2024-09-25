function [HX, HY, HXY, HX_Y, HY_X, IXY] =C(list)

    % 计算边缘分布 P(X) 和 P(Y)
    px = sum(list, 2); % 对Y求和, 得到P(X)
    py = sum(list, 1); % 对X求和, 得到P(Y)

    % 删除零概率，以避免计算log(0)
    px = px(px ~= 0);
    py = py(py ~=  0);
    joint = list(list ~=  0);

    % 计算 H(X), H(Y), H(X,Y)
    HX = -sum(px .* log2(px));       
    HY = -sum(py .* log2(py));        
    HXY = -sum(joint .* log2(joint));  

    % 计算 H(X|Y) 和 H(Y|X)
    HX_Y = HXY - HY;         
    HY_X = HXY - HX;         

  
    % 计算 I(X,Y)
    IXY = HX -  HX_Y;


end
