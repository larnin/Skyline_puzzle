// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:801,x:34089,y:32670,varname:node_801,prsc:2|diff-9615-OUT,spec-3330-OUT,gloss-9008-OUT,emission-9777-OUT;n:type:ShaderForge.SFN_Tex2d,id:7448,x:32317,y:32878,ptovrint:False,ptlb:WaterTex,ptin:_WaterTex,varname:node_7448,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8ab34a9278595c94f9b8adda589fdd54,ntxv:0,isnm:False|UVIN-1264-OUT;n:type:ShaderForge.SFN_Color,id:6514,x:32317,y:32714,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_6514,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.8758622,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:9760,x:32573,y:32714,varname:node_9760,prsc:2|A-6514-RGB,B-7448-G;n:type:ShaderForge.SFN_Tex2d,id:3247,x:31895,y:32813,varname:node_3247,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-4451-UVOUT,TEX-5112-TEX;n:type:ShaderForge.SFN_Panner,id:4451,x:31727,y:32868,varname:node_4451,prsc:2,spu:0.5,spv:1|UVIN-7682-UVOUT,DIST-8065-OUT;n:type:ShaderForge.SFN_TexCoord,id:7682,x:31489,y:32799,varname:node_7682,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:9383,x:31300,y:32940,varname:node_9383,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8065,x:31517,y:32955,varname:node_8065,prsc:2|A-9383-T,B-9110-OUT;n:type:ShaderForge.SFN_Slider,id:9110,x:31143,y:33086,ptovrint:False,ptlb:MouvSpeed,ptin:_MouvSpeed,varname:node_9110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Time,id:5200,x:31295,y:33219,varname:node_5200,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4831,x:31512,y:33234,varname:node_4831,prsc:2|A-5200-TDB,B-9110-OUT;n:type:ShaderForge.SFN_Panner,id:8944,x:31722,y:33147,varname:node_8944,prsc:2,spu:0,spv:1|UVIN-7682-UVOUT,DIST-4831-OUT;n:type:ShaderForge.SFN_Append,id:2982,x:32080,y:32946,varname:node_2982,prsc:2|A-3247-R,B-3247-G;n:type:ShaderForge.SFN_Lerp,id:1264,x:32150,y:33098,varname:node_1264,prsc:2|A-8944-UVOUT,B-2982-OUT,T-4203-OUT;n:type:ShaderForge.SFN_Slider,id:4203,x:31722,y:33320,ptovrint:False,ptlb:DeformationStrength,ptin:_DeformationStrength,varname:node_4203,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1581614,max:1;n:type:ShaderForge.SFN_Add,id:1604,x:33001,y:32705,varname:node_1604,prsc:2|A-7442-OUT,B-7448-B;n:type:ShaderForge.SFN_Vector1,id:4183,x:32573,y:32983,varname:node_4183,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:7779,x:32317,y:33039,varname:node_7779,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2dAsset,id:5112,x:31727,y:32674,ptovrint:False,ptlb:Clouds,ptin:_Clouds,varname:node_5112,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:9079,x:32197,y:32472,varname:node_9079,prsc:2|A-2717-RGB,B-1554-OUT,T-1554-OUT;n:type:ShaderForge.SFN_Tex2d,id:2717,x:31911,y:32590,varname:node_2717,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|TEX-5112-TEX;n:type:ShaderForge.SFN_Vector1,id:1554,x:31911,y:32529,varname:node_1554,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Lerp,id:6548,x:32397,y:32473,varname:node_6548,prsc:2|A-9079-OUT,B-7682-V,T-1554-OUT;n:type:ShaderForge.SFN_Add,id:1963,x:32602,y:32473,varname:node_1963,prsc:2|A-6548-OUT,B-2808-OUT;n:type:ShaderForge.SFN_Slider,id:2808,x:32240,y:32616,ptovrint:False,ptlb:Gel,ptin:_Gel,varname:node_2808,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Clamp01,id:4805,x:32779,y:32473,varname:node_4805,prsc:2|IN-1963-OUT;n:type:ShaderForge.SFN_Multiply,id:1943,x:33016,y:32394,varname:node_1943,prsc:2|A-4805-OUT,B-2808-OUT;n:type:ShaderForge.SFN_Lerp,id:9615,x:33538,y:32657,varname:node_9615,prsc:2|A-1604-OUT,B-2473-RGB,T-1467-OUT;n:type:ShaderForge.SFN_Step,id:1467,x:33218,y:32424,varname:node_1467,prsc:2|A-6962-OUT,B-1943-OUT;n:type:ShaderForge.SFN_Vector1,id:6962,x:33016,y:32528,varname:node_6962,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Vector1,id:3330,x:33742,y:32594,varname:node_3330,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9008,x:33742,y:32677,varname:node_9008,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Color,id:2473,x:33591,y:32231,ptovrint:False,ptlb:IceColor,ptin:_IceColor,varname:node_2473,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:9777,x:33828,y:32790,varname:node_9777,prsc:2|A-9615-OUT,B-7086-OUT;n:type:ShaderForge.SFN_Slider,id:7086,x:33392,y:32808,ptovrint:False,ptlb:Emissive,ptin:_Emissive,varname:node_7086,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:5508,x:32573,y:32857,varname:node_5508,prsc:2|A-6514-RGB,B-7448-G;n:type:ShaderForge.SFN_Lerp,id:7442,x:32774,y:32751,varname:node_7442,prsc:2|A-9760-OUT,B-5508-OUT,T-4183-OUT;proporder:7448-6514-9110-4203-5112-2808-2473-7086;pass:END;sub:END;*/

Shader "Custom/SHD_Cascades" {
    Properties {
        _WaterTex ("WaterTex", 2D) = "white" {}
        _MainColor ("MainColor", Color) = (0,0.8758622,1,1)
        _MouvSpeed ("MouvSpeed", Range(0, 1)) = 0
        _DeformationStrength ("DeformationStrength", Range(0, 1)) = 0.1581614
        _Clouds ("Clouds", 2D) = "white" {}
        _Gel ("Gel", Range(0, 1)) = 0
        _IceColor ("IceColor", Color) = (0.5,0.5,0.5,1)
        _Emissive ("Emissive", Range(0, 1)) = 0
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _WaterTex; uniform float4 _WaterTex_ST;
            uniform float4 _MainColor;
            uniform float _MouvSpeed;
            uniform float _DeformationStrength;
            uniform sampler2D _Clouds; uniform float4 _Clouds_ST;
            uniform float _Gel;
            uniform float4 _IceColor;
            uniform float _Emissive;
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
                float gloss = 1.0 - 0.2; // Convert roughness to gloss
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
                float3 specularColor = 0.0;
                float specularMonochrome;
                float4 node_5200 = _Time + _TimeEditor;
                float4 node_9383 = _Time + _TimeEditor;
                float2 node_4451 = (i.uv0+(node_9383.g*_MouvSpeed)*float2(0.5,1));
                float4 node_3247 = tex2D(_Clouds,TRANSFORM_TEX(node_4451, _Clouds));
                float2 node_1264 = lerp((i.uv0+(node_5200.b*_MouvSpeed)*float2(0,1)),float2(node_3247.r,node_3247.g),_DeformationStrength);
                float4 _WaterTex_var = tex2D(_WaterTex,TRANSFORM_TEX(node_1264, _WaterTex));
                float node_4183 = 0.5;
                float4 node_2717 = tex2D(_Clouds,TRANSFORM_TEX(i.uv0, _Clouds));
                float node_1554 = 0.5;
                float3 node_1467 = step(0.2,(saturate((lerp(lerp(node_2717.rgb,float3(node_1554,node_1554,node_1554),node_1554),float3(i.uv0.g,i.uv0.g,i.uv0.g),node_1554)+_Gel))*_Gel));
                float3 node_9615 = lerp((lerp((_MainColor.rgb+_WaterTex_var.g),(_MainColor.rgb*_WaterTex_var.g),node_4183)+_WaterTex_var.b),_IceColor.rgb,node_1467);
                float3 diffuseColor = node_9615; // Need this for specular when using metallic
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
                float3 emissive = (node_9615*_Emissive);
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _WaterTex; uniform float4 _WaterTex_ST;
            uniform float4 _MainColor;
            uniform float _MouvSpeed;
            uniform float _DeformationStrength;
            uniform sampler2D _Clouds; uniform float4 _Clouds_ST;
            uniform float _Gel;
            uniform float4 _IceColor;
            uniform float _Emissive;
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
                float gloss = 1.0 - 0.2; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float4 node_5200 = _Time + _TimeEditor;
                float4 node_9383 = _Time + _TimeEditor;
                float2 node_4451 = (i.uv0+(node_9383.g*_MouvSpeed)*float2(0.5,1));
                float4 node_3247 = tex2D(_Clouds,TRANSFORM_TEX(node_4451, _Clouds));
                float2 node_1264 = lerp((i.uv0+(node_5200.b*_MouvSpeed)*float2(0,1)),float2(node_3247.r,node_3247.g),_DeformationStrength);
                float4 _WaterTex_var = tex2D(_WaterTex,TRANSFORM_TEX(node_1264, _WaterTex));
                float node_4183 = 0.5;
                float4 node_2717 = tex2D(_Clouds,TRANSFORM_TEX(i.uv0, _Clouds));
                float node_1554 = 0.5;
                float3 node_1467 = step(0.2,(saturate((lerp(lerp(node_2717.rgb,float3(node_1554,node_1554,node_1554),node_1554),float3(i.uv0.g,i.uv0.g,i.uv0.g),node_1554)+_Gel))*_Gel));
                float3 node_9615 = lerp((lerp((_MainColor.rgb+_WaterTex_var.g),(_MainColor.rgb*_WaterTex_var.g),node_4183)+_WaterTex_var.b),_IceColor.rgb,node_1467);
                float3 diffuseColor = node_9615; // Need this for specular when using metallic
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
