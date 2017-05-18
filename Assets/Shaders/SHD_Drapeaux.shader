// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:6862,x:33060,y:32705,varname:node_6862,prsc:2|diff-7103-RGB,emission-9472-OUT,voffset-53-OUT;n:type:ShaderForge.SFN_Color,id:7103,x:32312,y:32534,ptovrint:False,ptlb:BaseColor,ptin:_BaseColor,varname:node_7103,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8308824,c2:0.02443774,c3:0.02443774,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3310,x:31967,y:32901,ptovrint:False,ptlb:Panner,ptin:_Panner,varname:node_3310,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dc0ed4751b4c1d3489207e66f4aef890,ntxv:0,isnm:False|UVIN-3073-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7245,x:31461,y:32794,varname:node_7245,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:3073,x:31757,y:32901,varname:node_3073,prsc:2,spu:1,spv:0|UVIN-7245-UVOUT,DIST-9855-OUT;n:type:ShaderForge.SFN_Time,id:4550,x:31195,y:32907,varname:node_4550,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9855,x:31466,y:32980,varname:node_9855,prsc:2|A-4550-T,B-8526-OUT;n:type:ShaderForge.SFN_Slider,id:8526,x:31038,y:33060,ptovrint:False,ptlb:WinSpeed,ptin:_WinSpeed,varname:node_8526,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.2329305,max:1;n:type:ShaderForge.SFN_Multiply,id:632,x:32317,y:32905,varname:node_632,prsc:2|A-3310-RGB,B-6827-RGB,C-7878-OUT;n:type:ShaderForge.SFN_Lerp,id:53,x:32650,y:32934,varname:node_53,prsc:2|A-632-OUT,B-3095-OUT,T-7245-U;n:type:ShaderForge.SFN_Vector1,id:3095,x:32317,y:33042,varname:node_3095,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:7878,x:31861,y:33237,ptovrint:False,ptlb:WindIntensity,ptin:_WindIntensity,varname:node_7878,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:9117,x:32160,y:32701,ptovrint:False,ptlb:Emissive,ptin:_Emissive,varname:node_9117,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:9472,x:32700,y:32694,varname:node_9472,prsc:2|A-7103-RGB,B-9117-OUT;n:type:ShaderForge.SFN_Color,id:6827,x:32204,y:33246,ptovrint:False,ptlb:Direction,ptin:_Direction,varname:node_6827,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:7103-3310-8526-7878-9117-6827;pass:END;sub:END;*/

Shader "Custom/SHD_Drapeaux" {
    Properties {
        _BaseColor ("BaseColor", Color) = (0.8308824,0.02443774,0.02443774,1)
        _Panner ("Panner", 2D) = "white" {}
        _WinSpeed ("WinSpeed", Range(-1, 1)) = 0.2329305
        _WindIntensity ("WindIntensity", Range(0, 1)) = 0
        _Emissive ("Emissive", Range(0, 1)) = 0
        _Direction ("Direction", Color) = (0.5,0.5,0.5,1)
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _BaseColor;
            uniform sampler2D _Panner; uniform float4 _Panner_ST;
            uniform float _WinSpeed;
            uniform float _WindIntensity;
            uniform float _Emissive;
            uniform float4 _Direction;
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
                float4 node_4550 = _Time + _TimeEditor;
                float2 node_3073 = (o.uv0+(node_4550.g*_WinSpeed)*float2(1,0));
                float4 _Panner_var = tex2Dlod(_Panner,float4(TRANSFORM_TEX(node_3073, _Panner),0.0,0));
                float node_3095 = 0.0;
                v.vertex.xyz += lerp((_Panner_var.rgb*_Direction.rgb*_WindIntensity),float3(node_3095,node_3095,node_3095),o.uv0.r);
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
                float3 diffuseColor = _BaseColor.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (_BaseColor.rgb*_Emissive);
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _BaseColor;
            uniform sampler2D _Panner; uniform float4 _Panner_ST;
            uniform float _WinSpeed;
            uniform float _WindIntensity;
            uniform float _Emissive;
            uniform float4 _Direction;
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
                float4 node_4550 = _Time + _TimeEditor;
                float2 node_3073 = (o.uv0+(node_4550.g*_WinSpeed)*float2(1,0));
                float4 _Panner_var = tex2Dlod(_Panner,float4(TRANSFORM_TEX(node_3073, _Panner),0.0,0));
                float node_3095 = 0.0;
                v.vertex.xyz += lerp((_Panner_var.rgb*_Direction.rgb*_WindIntensity),float3(node_3095,node_3095,node_3095),o.uv0.r);
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
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Panner; uniform float4 _Panner_ST;
            uniform float _WinSpeed;
            uniform float _WindIntensity;
            uniform float4 _Direction;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_4550 = _Time + _TimeEditor;
                float2 node_3073 = (o.uv0+(node_4550.g*_WinSpeed)*float2(1,0));
                float4 _Panner_var = tex2Dlod(_Panner,float4(TRANSFORM_TEX(node_3073, _Panner),0.0,0));
                float node_3095 = 0.0;
                v.vertex.xyz += lerp((_Panner_var.rgb*_Direction.rgb*_WindIntensity),float3(node_3095,node_3095,node_3095),o.uv0.r);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
