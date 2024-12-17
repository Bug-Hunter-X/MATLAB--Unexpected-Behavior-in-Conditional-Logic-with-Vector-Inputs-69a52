function result = myFunctionCorrected(x)
  % Corrected function to handle vector and matrix inputs
  result = zeros(size(x)); % Preallocate the output array
  result(x > 10) = x(x > 10).^2; % Apply the square operation element-wise
  result(x < 0) = 0;       % Set elements less than 0 to 0 element-wise
  result(x <= 10 & x >= 0) = x(x <= 10 & x >=0) + 1; %Apply the +1 operation element-wise
end

% Example usage:
 x = [1, 12, -2, 5, 11]; 
 result = myFunctionCorrected(x); % Returns [2, 144, 0, 6, 121]
 x = [1 2; 3 4];
 result = myFunctionCorrected(x); %returns [2 3; 4 5] 