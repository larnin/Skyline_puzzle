// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9353,x:32719,y:32712,varname:node_9353,prsc:2|custl-5335-RGB;n:type:ShaderForge.SFN_Tex2d,id:5335,x:32281,y:32835,ptovrint:False,ptlb:Sky,ptin:_Sky,varname:node_5335,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5728-UVOUT;n:type:ShaderForge.SFN_Panner,id:5728,x:32073,y:32835,varname:node_5728,prsc:2,spu:1,spv:0|UVIN-3546-UVOUT,DIST-139-OUT;n:type:ShaderForge.SFN_Time,id:2505,x:31585,y:32823,varname:node_2505,prsc:2;n:type:ShaderForge.SFN_Multiply,id:139,x:31809,y:32854,varname:node_139,prsc:2|A-2505-T,B-7392-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7392,x:31585,y:32972,ptovrint:False,ptlb:MouvSpeed,ptin:_MouvSpeed,varname:node_7392,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_TexCoord,id:3546,x:31809,y:32706,varname:node_3546,prsc:2,uv:0;proporder:5335-7392;pass:END;sub:END;*/

Shader "Custom/SHD_Sky" {
    Properties {
        _Sky ("Sky", 2D) = "white" {}
        _MouvSpeed ("MouvSpeed", Float ) = 0
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Sky; uniform float4 _Sky_ST;
            uniform float _MouvSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float4 node_2505 = _Time + _TimeEditor;
                float2 node_5728 = (i.uv0+(node_2505.g*_MouvSpeed)*float2(1,0));
                float4 _Sky_var = tex2D(_Sky,TRANSFORM_TEX(node_5728, _Sky));
                float3 finalColor = _Sky_var.rgb;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
