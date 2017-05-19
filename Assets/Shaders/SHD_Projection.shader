// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:7446,x:33842,y:32828,varname:node_7446,prsc:2|diff-7988-OUT,spec-3019-OUT,gloss-5759-OUT,emission-5688-OUT;n:type:ShaderForge.SFN_Multiply,id:324,x:31856,y:32784,varname:node_324,prsc:2|A-4415-XYZ,B-2517-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2517,x:31608,y:32866,ptovrint:False,ptlb:Tiling,ptin:_Tiling,varname:node_2517,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tex2d,id:8840,x:32569,y:32802,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_8840,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9325-OUT;n:type:ShaderForge.SFN_Slider,id:3019,x:32569,y:32975,ptovrint:False,ptlb:Metal,ptin:_Metal,varname:node_3019,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:5759,x:32565,y:33147,ptovrint:False,ptlb:Roughness,ptin:_Roughness,varname:node_5759,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_FragmentPosition,id:4415,x:31608,y:32714,varname:node_4415,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:9325,x:32030,y:32784,varname:node_9325,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-324-OUT;n:type:ShaderForge.SFN_Tex2d,id:2339,x:32569,y:32622,ptovrint:False,ptlb:Motifs,ptin:_Motifs,varname:_Texture_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5faf781abe9509e4c809ec633ac4bbe8,ntxv:2,isnm:False|UVIN-9325-OUT;n:type:ShaderForge.SFN_Slider,id:3436,x:32412,y:32512,ptovrint:False,ptlb:ApparitionMotifs,ptin:_ApparitionMotifs,varname:node_3436,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Lerp,id:475,x:33075,y:32751,varname:node_475,prsc:2|A-8840-RGB,B-1594-OUT,T-6614-OUT;n:type:ShaderForge.SFN_Multiply,id:6614,x:32855,y:32499,varname:node_6614,prsc:2|A-1804-OUT,B-2339-R;n:type:ShaderForge.SFN_Color,id:3842,x:32412,y:32249,ptovrint:False,ptlb:MotifColor,ptin:_MotifColor,varname:node_3842,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.9117646,c4:1;n:type:ShaderForge.SFN_Lerp,id:599,x:33075,y:32892,varname:node_599,prsc:2|A-4652-OUT,B-3842-RGB,T-6614-OUT;n:type:ShaderForge.SFN_Vector1,id:4652,x:32882,y:32877,varname:node_4652,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:1594,x:32744,y:32704,varname:node_1594,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:7743,x:32152,y:32404,varname:node_7743,prsc:2|A-4415-Y,B-2517-OUT;n:type:ShaderForge.SFN_Multiply,id:1804,x:32855,y:32365,varname:node_1804,prsc:2|A-7743-OUT,B-3436-OUT;n:type:ShaderForge.SFN_RemapRange,id:9008,x:33093,y:32296,varname:node_9008,prsc:2,frmn:-5,frmx:5,tomn:0,tomx:1|IN-1804-OUT;n:type:ShaderForge.SFN_Tex2d,id:9630,x:33338,y:32507,ptovrint:False,ptlb:Hexa,ptin:_Hexa,varname:node_9630,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8517ffc4f44dac8478d678e4d6c4aa6e,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Lerp,id:7988,x:33453,y:32780,varname:node_7988,prsc:2|A-475-OUT,B-2310-RGB,T-9630-R;n:type:ShaderForge.SFN_Color,id:2310,x:33075,y:32610,ptovrint:False,ptlb:HexaBaseColor,ptin:_HexaBaseColor,varname:node_2310,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5803922,c2:0,c3:0.1333333,c4:1;n:type:ShaderForge.SFN_Slider,id:960,x:32966,y:33073,ptovrint:False,ptlb:HexaEmissive,ptin:_HexaEmissive,varname:node_960,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:5828,x:33374,y:32311,ptovrint:False,ptlb:HexaEmissiveColor,ptin:_HexaEmissiveColor,varname:_HexaBaseColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5803922,c2:0,c3:0.1333333,c4:1;n:type:ShaderForge.SFN_Lerp,id:5688,x:33672,y:32959,varname:node_5688,prsc:2|A-599-OUT,B-5828-RGB,T-6471-OUT;n:type:ShaderForge.SFN_Multiply,id:6471,x:33475,y:33059,varname:node_6471,prsc:2|A-9630-R,B-960-OUT;proporder:2517-8840-3019-5759-2339-3436-3842-9630-2310-960-5828;pass:END;sub:END;*/

Shader "Custom/SHD_Projection" {
    Properties {
        _Tiling ("Tiling", Float ) = 0
        _Texture ("Texture", 2D) = "white" {}
        _Metal ("Metal", Range(0, 1)) = 1
        _Roughness ("Roughness", Range(0, 1)) = 0
        _Motifs ("Motifs", 2D) = "black" {}
        _ApparitionMotifs ("ApparitionMotifs", Range(0, 1)) = 1
        _MotifColor ("MotifColor", Color) = (0,1,0.9117646,1)
        _Hexa ("Hexa", 2D) = "black" {}
        _HexaBaseColor ("HexaBaseColor", Color) = (0.5803922,0,0.1333333,1)
        _HexaEmissive ("HexaEmissive", Range(0, 1)) = 0
        _HexaEmissiveColor ("HexaEmissiveColor", Color) = (0.5803922,0,0.1333333,1)
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
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform float _Tiling;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Metal;
            uniform float _Roughness;
            uniform sampler2D _Motifs; uniform float4 _Motifs_ST;
            uniform float _ApparitionMotifs;
            uniform float4 _MotifColor;
            uniform sampler2D _Hexa; uniform float4 _Hexa_ST;
            uniform float4 _HexaBaseColor;
            uniform float _HexaEmissive;
            uniform float4 _HexaEmissiveColor;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - _Roughness; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _Metal;
                float specularMonochrome;
                float2 node_9325 = (i.posWorld.rgb*_Tiling).rg;
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_9325, _Texture));
                float node_1594 = 0.0;
                float node_1804 = ((i.posWorld.g*_Tiling)*_ApparitionMotifs);
                float4 _Motifs_var = tex2D(_Motifs,TRANSFORM_TEX(node_9325, _Motifs));
                float node_6614 = (node_1804*_Motifs_var.r);
                float4 _Hexa_var = tex2D(_Hexa,TRANSFORM_TEX(i.uv0, _Hexa));
                float3 diffuseColor = lerp(lerp(_Texture_var.rgb,float3(node_1594,node_1594,node_1594),node_6614),_HexaBaseColor.rgb,_Hexa_var.r); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz)*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_4652 = 0.0;
                float3 emissive = lerp(lerp(float3(node_4652,node_4652,node_4652),_MotifColor.rgb,node_6614),_HexaEmissiveColor.rgb,(_Hexa_var.r*_HexaEmissive));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform float _Tiling;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Metal;
            uniform float _Roughness;
            uniform sampler2D _Motifs; uniform float4 _Motifs_ST;
            uniform float _ApparitionMotifs;
            uniform float4 _MotifColor;
            uniform sampler2D _Hexa; uniform float4 _Hexa_ST;
            uniform float4 _HexaBaseColor;
            uniform float _HexaEmissive;
            uniform float4 _HexaEmissiveColor;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - _Roughness; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _Metal;
                float specularMonochrome;
                float2 node_9325 = (i.posWorld.rgb*_Tiling).rg;
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_9325, _Texture));
                float node_1594 = 0.0;
                float node_1804 = ((i.posWorld.g*_Tiling)*_ApparitionMotifs);
                float4 _Motifs_var = tex2D(_Motifs,TRANSFORM_TEX(node_9325, _Motifs));
                float node_6614 = (node_1804*_Motifs_var.r);
                float4 _Hexa_var = tex2D(_Hexa,TRANSFORM_TEX(i.uv0, _Hexa));
                float3 diffuseColor = lerp(lerp(_Texture_var.rgb,float3(node_1594,node_1594,node_1594),node_6614),_HexaBaseColor.rgb,_Hexa_var.r); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
