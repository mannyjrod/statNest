function [me, SD] = statNest(v)
% user-defined function statNest accepts input argument v, and has output
% arguments me and SD

me = AVG(v); % declares me variable and calls function AVG, passes v data
SD = StandDiv(v); % declares  SD variable and calls function StandDiv, 
% passes v data

function av = AVG(x) % defines AVG function, stores v data into a parameter
    % reference variable x, sets function to variable av the output
    % argument
    n = length(x); % declares n variable, sets n to the # of elements in x
    av = sum(x)./n; % declares av variable, sets it to sum of x / #elements
end

    function sdiv = StandDiv(x) % defines StandDiv function, stores v data
        % into a parameter reference variable x, sets the function to
        % variable sdiv - the output argument
        % Break the standard deviation expresion in multiple pieces...
        n = length(x); % sample size
        pnum = (x-me); % declares pnum variable, output is an array
        pnumexp = (pnum).^2; % output is an array
        sdiv = sqrt(sum(pnumexp)./(n-1)); % declares sdiv variable, sets it
        % std deviation expression
    end
end
        
