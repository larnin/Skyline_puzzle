// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:8801,x:32833,y:32631,varname:node_8801,prsc:2|diff-5197-RGB,emission-5197-RGB,alpha-5336-OUT;n:type:ShaderForge.SFN_Tex2d,id:6442,x:31746,y:32411,ptovrint:False,ptlb:PolarUV,ptin:_PolarUV,varname:node_6442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:427a3dfc4c6193645a3ece63fc4d3487,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:6020,x:32092,y:32538,varname:node_6020,prsc:2|A-6442-R,B-6442-G;n:type:ShaderForge.SFN_Tex2d,id:1586,x:32374,y:32693,ptovrint:False,ptlb:BaseTex,ptin:_BaseTex,varname:node_1586,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dc0ed4751b4c1d3489207e66f4aef890,ntxv:0,isnm:False|UVIN-3818-UVOUT;n:type:ShaderForge.SFN_Panner,id:3818,x:31972,y:32709,varname:node_3818,prsc:2,spu:0,spv:1|UVIN-6020-OUT,DIST-7388-OUT;n:type:ShaderForge.SFN_Multiply,id:7388,x:31726,y:32731,varname:node_7388,prsc:2|A-6656-T,B-3173-OUT;n:type:ShaderForge.SFN_Time,id:6656,x:31485,y:32670,varname:node_6656,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:3173,x:31485,y:32818,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_3173,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_TexCoord,id:6059,x:31726,y:32581,varname:node_6059,prsc:2,uv:0;n:type:ShaderForge.SFN_Color,id:5197,x:32374,y:32487,ptovrint:False,ptlb:BaseColor,ptin:_BaseColor,varname:node_5197,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0.3517241,c4:1;n:type:ShaderForge.SFN_Lerp,id:5336,x:32605,y:32724,varname:node_5336,prsc:2|A-1586-R,B-4313-OUT,T-7564-OUT;n:type:ShaderForge.SFN_Vector1,id:4313,x:32374,y:32852,varname:node_4313,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:7564,x:32239,y:32946,ptovrint:False,ptlb:EffectIntenisty,ptin:_EffectIntenisty,varname:node_7564,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9226736,max:1;proporder:6442-1586-3173-5197-7564;pass:END;sub:END;*/

Shader "Custom/SHD_Portail" {
    Properties {
        _PolarUV ("PolarUV", 2D) = "white" {}
        _BaseTex ("BaseTex", 2D) = "white" {}
        _Speed ("Speed", Float ) = 0.1
        _BaseColor ("BaseColor", Color) = (1,0,0.3517241,1)
        _EffectIntenisty ("EffectIntenisty", Range(0, 1)) = 0.9226736
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _PolarUV; uniform float4 _PolarUV_ST;
            uniform sampler2D _BaseTex; uniform float4 _BaseTex_ST;
            uniform float _Speed;
            uniform float4 _BaseColor;
            uniform float _EffectIntenisty;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = _BaseColor.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = _BaseColor.rgb;
/// Final Color:
                float3 finalColor = diffuse + emissive;
                float4 node_6656 = _Time + _TimeEditor;
                float4 _PolarUV_var = tex2D(_PolarUV,TRANSFORM_TEX(i.uv0, _PolarUV));
                float2 node_3818 = (float2(_PolarUV_var.r,_PolarUV_var.g)+(node_6656.g*_Speed)*float2(0,1));
                float4 _BaseTex_var = tex2D(_BaseTex,TRANSFORM_TEX(node_3818, _BaseTex));
                fixed4 finalRGBA = fixed4(finalColor,lerp(_BaseTex_var.r,1.0,_EffectIntenisty));
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _PolarUV; uniform float4 _PolarUV_ST;
            uniform sampler2D _BaseTex; uniform float4 _BaseTex_ST;
            uniform float _Speed;
            uniform float4 _BaseColor;
            uniform float _EffectIntenisty;
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
                float3 diffuseColor = _BaseColor.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                float4 node_6656 = _Time + _TimeEditor;
                float4 _PolarUV_var = tex2D(_PolarUV,TRANSFORM_TEX(i.uv0, _PolarUV));
                float2 node_3818 = (float2(_PolarUV_var.r,_PolarUV_var.g)+(node_6656.g*_Speed)*float2(0,1));
                float4 _BaseTex_var = tex2D(_BaseTex,TRANSFORM_TEX(node_3818, _BaseTex));
                fixed4 finalRGBA = fixed4(finalColor * lerp(_BaseTex_var.r,1.0,_EffectIntenisty),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
