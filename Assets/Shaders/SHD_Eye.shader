// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2125,x:33353,y:32693,varname:node_2125,prsc:2|diff-5952-OUT,emission-5808-OUT;n:type:ShaderForge.SFN_Tex2d,id:3157,x:32318,y:32820,ptovrint:False,ptlb:Emissive,ptin:_Emissive,varname:node_3157,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:251b6bab55ac13542b67280f84997940,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8519,x:32649,y:32804,varname:node_8519,prsc:2|A-8298-OUT,B-3157-RGB;n:type:ShaderForge.SFN_Slider,id:842,x:32161,y:32999,ptovrint:False,ptlb:Emissive Strength,ptin:_EmissiveStrength,varname:node_842,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Lerp,id:5808,x:32916,y:32792,varname:node_5808,prsc:2|A-3278-OUT,B-8519-OUT,T-842-OUT;n:type:ShaderForge.SFN_Vector1,id:3278,x:32649,y:32924,varname:node_3278,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:6539,x:32318,y:32632,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_6539,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fab52fccc0928e743aae008c8e85c055,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:6765,x:32161,y:33096,ptovrint:False,ptlb:Button,ptin:_Button,varname:node_6765,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:1710,x:32318,y:33187,ptovrint:False,ptlb:BoutonMask,ptin:_BoutonMask,varname:node_1710,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c9bd6be4eefa82e4ebd1dca9701db076,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:5952,x:32602,y:32600,varname:node_5952,prsc:2|A-6539-RGB,B-7216-RGB,T-9402-OUT;n:type:ShaderForge.SFN_Color,id:7216,x:32318,y:32482,ptovrint:False,ptlb:BoutonActivated,ptin:_BoutonActivated,varname:node_7216,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0.3103447,c4:1;n:type:ShaderForge.SFN_Multiply,id:9402,x:32664,y:33011,varname:node_9402,prsc:2|A-1710-R,B-6765-OUT;n:type:ShaderForge.SFN_Color,id:2192,x:32602,y:32462,ptovrint:False,ptlb:EmissiveColor,ptin:_EmissiveColor,varname:node_2192,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:8298,x:32890,y:32516,varname:node_8298,prsc:2|A-5952-OUT,B-2192-RGB,T-3280-OUT;n:type:ShaderForge.SFN_Slider,id:3280,x:32471,y:32380,ptovrint:False,ptlb:EmissiveColorBool,ptin:_EmissiveColorBool,varname:node_3280,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:3157-842-6539-6765-1710-7216-2192-3280;pass:END;sub:END;*/

Shader "SHD_Eyes" {
    Properties {
        _Emissive ("Emissive", 2D) = "white" {}
        _EmissiveStrength ("Emissive Strength", Range(0, 1)) = 1
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Button ("Button", Range(0, 1)) = 0
        _BoutonMask ("BoutonMask", 2D) = "white" {}
        _BoutonActivated ("BoutonActivated", Color) = (1,0,0.3103447,1)
        _EmissiveColor ("EmissiveColor", Color) = (0,0,0,1)
        _EmissiveColorBool ("EmissiveColorBool", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform float4 _LightColor0;
            uniform sampler2D _Emissive; uniform float4 _Emissive_ST;
            uniform float _EmissiveStrength;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Button;
            uniform sampler2D _BoutonMask; uniform float4 _BoutonMask_ST;
            uniform float4 _BoutonActivated;
            uniform float4 _EmissiveColor;
            uniform float _EmissiveColorBool;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _BoutonMask_var = tex2D(_BoutonMask,TRANSFORM_TEX(i.uv0, _BoutonMask));
                float3 node_5952 = lerp(_Diffuse_var.rgb,_BoutonActivated.rgb,(_BoutonMask_var.r*_Button));
                float3 diffuseColor = node_5952;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_3278 = 0.0;
                float4 _Emissive_var = tex2D(_Emissive,TRANSFORM_TEX(i.uv0, _Emissive));
                float3 emissive = lerp(float3(node_3278,node_3278,node_3278),(lerp(node_5952,_EmissiveColor.rgb,_EmissiveColorBool)*_Emissive_var.rgb),_EmissiveStrength);
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform float4 _LightColor0;
            uniform sampler2D _Emissive; uniform float4 _Emissive_ST;
            uniform float _EmissiveStrength;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Button;
            uniform sampler2D _BoutonMask; uniform float4 _BoutonMask_ST;
            uniform float4 _BoutonActivated;
            uniform float4 _EmissiveColor;
            uniform float _EmissiveColorBool;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _BoutonMask_var = tex2D(_BoutonMask,TRANSFORM_TEX(i.uv0, _BoutonMask));
                float3 node_5952 = lerp(_Diffuse_var.rgb,_BoutonActivated.rgb,(_BoutonMask_var.r*_Button));
                float3 diffuseColor = node_5952;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
