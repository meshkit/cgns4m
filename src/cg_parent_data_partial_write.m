function ierr = cg_parent_data_partial_write(in_fn, in_B, in_Z, in_S, in_start, in_end, in_ParentData)
% Gateway function for C function cg_parent_data_partial_write.
%
% ierr = cg_parent_data_partial_write(fn, B, Z, S, start, end, ParentData)
%
% Input arguments (required; type is auto-casted):
%              fn: 32-bit integer (int32), scalar
%               B: 32-bit integer (int32), scalar
%               Z: 32-bit integer (int32), scalar
%               S: 32-bit integer (int32), scalar
%           start: 64-bit integer (int64), scalar
%             end: 64-bit integer (int64), scalar
%      ParentData: 64-bit integer (int64), array
%
% Output argument (optional):
%            ierr: 32-bit integer (int32), scalar
%
% The original C function is:
% int cg_parent_data_partial_write(int fn, int B, int Z, int S, long long start, long long end, const long long * ParentData);
%
% For detail, see <a href="https://cgns.github.io/CGNS_docs_current/midlevel/grid.html">online documentation</a>.
%
if (nargin < 7)
    error('Incorrect number of input or output arguments.');
end
in_fn = int32(in_fn);
in_B = int32(in_B);
in_Z = int32(in_Z);
in_S = int32(in_S);
in_start = int64(in_start);
in_end = int64(in_end);
in_ParentData = int64(in_ParentData);

% Invoke the actual MEX-function.
ierr = cgnslib_mex(int32(89), in_fn, in_B, in_Z, in_S, in_start, in_end, in_ParentData);
