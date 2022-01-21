function Result = calcPolyfit(x, y, n, silent)
    if ~exist('silent','var')
        silent = 0;
    end
    coefficient = polyfit(x,y,n); 
    if(silent == 0)
        Output = "Geradengleichung:";
        for i = 1:length(coefficient)
            if coefficient(i) < 0
                Output = Output +" "+ coefficient(i)+"*x^"+(length(coefficient)-i);
            else
                Output = Output +" + "+ coefficient(i)+"*x^"+(length(coefficient)-i);
            end
        end
        disp(Output);
    end
    Result.x = x;
    Result.y = polyval(coefficient,x);
    Result.Koeffizienten = coefficient;
end