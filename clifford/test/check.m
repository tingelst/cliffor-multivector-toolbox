function check(L, E)
% Test function to check a logical condition L, and output an error
% message from the string in the parameter E if false. L may be a vector,
% in which case, all its elements are required to be true.

% Copyright (c) 2015 Stephen J. Sangwine and Eckhard Hitzer
% See the file : Copyright.m for further details.

narginchk(2, 2), nargoutchk(0, 0)

if ~islogical(L)
    error('First parameter must be logical.');
end

if ~all(L)
    error(E);
end

% $Id: check.m 65 2016-06-20 11:39:39Z sangwine $
