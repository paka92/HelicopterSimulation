function [phi,a,b] = addSymbolicMatrixFunc()
% *************************************************************************
% Pressure Distribution Function Matrix
% *************************************************************************
syms phi00 phi01 phi02 phi03 phi04 phi05 phi06 phi07 phi08 phi09;
syms phi10 phi11 phi12 phi13 phi14 phi15 phi16 phi17 phi18 phi19;
syms phi20 phi21 phi22 phi23 phi24 phi25 phi26 phi27 phi28 phi29;
syms phi30 phi31 phi32 phi33 phi34 phi35 phi36 phi37 phi38 phi39;
syms phi40 phi41 phi42 phi43 phi44 phi45 phi46 phi47 phi48 phi49;
syms phi50 phi51 phi52 phi53 phi54 phi55 phi56 phi57 phi58 phi59;
syms phi60 phi61 phi62 phi63 phi64 phi65 phi66 phi67 phi68 phi69;
syms phi70 phi71 phi72 phi73 phi74 phi75 phi76 phi77 phi78 phi79;
syms phi80 phi81 phi82 phi83 phi84 phi85 phi86 phi87 phi88 phi89;
syms phi90 phi91 phi92 phi93 phi94 phi95 phi96 phi97 phi98 phi99;
phi =  ...
[phi00 phi01 phi02 phi03 phi04 phi05 phi06 phi07 phi08 phi09;
 phi10 phi11 phi12 phi13 phi14 phi15 phi16 phi17 phi18 phi19;
 phi20 phi21 phi22 phi23 phi24 phi25 phi26 phi27 phi28 phi29;
 phi30 phi31 phi32 phi33 phi34 phi35 phi36 phi37 phi38 phi39;
 phi40 phi41 phi42 phi43 phi44 phi45 phi46 phi47 phi48 phi49;
 phi50 phi51 phi52 phi53 phi54 phi55 phi56 phi57 phi58 phi59;
 phi60 phi61 phi62 phi63 phi64 phi65 phi66 phi67 phi68 phi69;
 phi70 phi71 phi72 phi73 phi74 phi75 phi76 phi77 phi78 phi79;
 phi80 phi81 phi82 phi83 phi84 phi85 phi86 phi87 phi88 phi89;
 phi90 phi91 phi92 phi93 phi94 phi95 phi96 phi97 phi98 phi99];
	
% *************************************************************************
% Cosine Multiplying states
% *************************************************************************
syms a00 a01 a02 a03 a04 a05 a06 a07 a08 a09;
syms a10 a11 a12 a13 a14 a15 a16 a17 a18 a19;
syms a20 a21 a22 a23 a24 a25 a26 a27 a28 a29;
syms a30 a31 a32 a33 a34 a35 a36 a37 a38 a39;
syms a40 a41 a42 a43 a44 a45 a46 a47 a48 a49;
syms a50 a51 a52 a53 a54 a55 a56 a57 a58 a59;
syms a60 a61 a62 a63 a64 a65 a66 a67 a68 a69;
syms a70 a71 a72 a73 a74 a75 a76 a77 a78 a79;
syms a80 a81 a82 a83 a84 a85 a86 a87 a88 a89;
syms a90 a91 a92 a93 a94 a95 a96 a97 a98 a99;
a =  ...
[a00 a01 a02 a03 a04 a05 a06 a07 a08 a09;
 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19;
 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29;
 a30 a31 a32 a33 a34 a35 a36 a37 a38 a39;
 a40 a41 a42 a43 a44 a45 a46 a47 a48 a49;
 a50 a51 a52 a53 a54 a55 a56 a57 a58 a59;
 a60 a61 a62 a63 a64 a65 a66 a67 a68 a69;
 a70 a71 a72 a73 a74 a75 a76 a77 a78 a79;
 a80 a81 a82 a83 a84 a85 a86 a87 a88 a89;
 a90 a91 a92 a93 a94 a95 a96 a97 a98 a99];
    
% *************************************************************************
% Sine Multiplying states
% *************************************************************************
syms b00 b01 b02 b03 b04 b05 b06 b07 b08 b09;
syms b10 b11 b12 b13 b14 b15 b16 b17 b18 b19;
syms b20 b21 b22 b23 b24 b25 b26 b27 b28 b29;
syms b30 b31 b32 b33 b34 b35 b36 b37 b38 b39;
syms b40 b41 b42 b43 b44 b45 b46 b47 b48 b49;
syms b50 b51 b52 b53 b54 b55 b56 b57 b58 b59;
syms b60 b61 b62 b63 b64 b65 b66 b67 b68 b69;
syms b70 b71 b72 b73 b74 b75 b76 b77 b78 b79;
syms b80 b81 b82 b83 b84 b85 b86 b87 b88 b89;
syms b90 b91 b92 b93 b94 b95 b96 b97 b98 b99;
b =  ...
[b00 b01 b02 b03 b04 b05 b06 b07 b08 b09;
 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19;
 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29;
 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39;
 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49;
 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59;
 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69;
 b70 b71 b72 b73 b74 b75 b76 b77 b78 b79;
 b80 b81 b82 b83 b84 b85 b86 b87 b88 b89;
 b90 b91 b92 b93 b94 b95 b96 b97 b98 b99];
    
end

