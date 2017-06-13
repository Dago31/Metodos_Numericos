function [x] = norma1(a)
    x=0;
    for i=1:size(a)
        x = x +abs(a(i));
    end
end

