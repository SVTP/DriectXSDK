vs.1.0

;Constants 
;
;c0-c3 Object
;
;c4-c7 Projection
;
;c8-c11 Total matrix
;
;c12 - Light Direction (In World Space)
;
;Input
;
;V0 - Position
;V7 - Texture 
;V3 - Normal
;V8 - Tangnet


;Take normal and binormal into worldspace first
m3x3 r7,v8,c0
m3x3 r8,v3,c0

;Cross product, flip orienation 
;may or may not be neccisary here 
;depending on the content
mul r0,r7.zxyw,-r8.yzxw;
mad r5,r7.yzxw,-r8.zxyw,-r0;

;transform the light vector
dp3 r6.x,r7,-c12
dp3 r6.y,r5,-c12
dp3 r6.z,r8,-c12

;bias around 128
add r6.xyz,r6.xyz,c32
mul oD0.xyz,r6.xyz,c33

;transform into projection space
m4x4 oPos,v0,c8
mov oT0.xy,v7
mov oT1.xy,v7





