function result = myFunction(x)
  % This function demonstrates an uncommon MATLAB error related to array indexing.
  if x > 10
    result = x^2; 
  elseif x < 0
    result = 0; 
  else
    result = x + 1; 
  end
end

% Example usage:
 x = 12; 
 result = myFunction(x); % returns 144
 x = -2; 
 result = myFunction(x); % returns 0
 x = 5;
 result = myFunction(x); % returns 6

%The issue occurs when x is a vector or matrix
 x = [1,12,-2];
 result = myFunction(x); % Incorrect behaviour (Error)