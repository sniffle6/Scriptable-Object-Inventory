// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,nrsp:0,limd:3,spmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,rprd:False,enco:True,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:2989,x:35266,y:32353,varname:node_2989,prsc:2|diff-7318-OUT,diffpow-1408-OUT,spec-6493-OUT,gloss-4721-OUT,normal-4398-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3584,x:31188,y:32532,varname:node_3584,prsc:2;n:type:ShaderForge.SFN_Append,id:5123,x:31515,y:32487,varname:node_5123,prsc:2|A-3584-Z,B-3584-X;n:type:ShaderForge.SFN_Append,id:1118,x:31515,y:32647,varname:node_1118,prsc:2|A-3584-X,B-3584-Y;n:type:ShaderForge.SFN_Append,id:7866,x:31515,y:32378,varname:node_7866,prsc:2|A-3584-Y,B-3584-Z;n:type:ShaderForge.SFN_NormalVector,id:338,x:31440,y:32117,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:7893,x:31628,y:32117,varname:abs_normaldir,prsc:2|IN-338-OUT;n:type:ShaderForge.SFN_Multiply,id:9126,x:32761,y:32068,varname:node_9126,prsc:2|A-7893-OUT,B-7893-OUT;n:type:ShaderForge.SFN_Multiply,id:9139,x:31762,y:32457,varname:node_9139,prsc:2|A-7866-OUT,B-5164-OUT;n:type:ShaderForge.SFN_Multiply,id:2348,x:33790,y:33182,varname:node_2348,prsc:2|A-5123-OUT,B-5164-OUT;n:type:ShaderForge.SFN_Multiply,id:8409,x:31526,y:32799,varname:node_8409,prsc:2|A-1118-OUT,B-5164-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5164,x:31336,y:33118,ptovrint:False,ptlb:tiling,ptin:_tiling,varname:_tiling,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ComponentMask,id:3840,x:33481,y:32167,varname:node_3840,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-9126-OUT;n:type:ShaderForge.SFN_Tex2d,id:6628,x:31969,y:33476,varname:_grasstexture,prsc:2,tex:4b8d081e9d114c7f1100f5ab44295342,ntxv:0,isnm:False|UVIN-8643-OUT,TEX-5429-TEX;n:type:ShaderForge.SFN_Tex2d,id:4090,x:32572,y:32313,varname:_rocktexturez,prsc:2,tex:37d471177e9735144b3dc8bee880e573,ntxv:0,isnm:False|UVIN-7442-OUT,TEX-9311-TEX;n:type:ShaderForge.SFN_Tex2d,id:7082,x:32562,y:32659,varname:_rocktexturey,prsc:2,tex:37d471177e9735144b3dc8bee880e573,ntxv:0,isnm:False|UVIN-3843-OUT,TEX-9311-TEX;n:type:ShaderForge.SFN_Slider,id:2230,x:32294,y:32237,ptovrint:False,ptlb:rock texture tile,ptin:_rocktexturetile,varname:_rocktexturetile,prsc:2,min:0,cur:0.6239327,max:1;n:type:ShaderForge.SFN_Multiply,id:7442,x:31978,y:32402,varname:node_7442,prsc:2|A-9139-OUT,B-2230-OUT;n:type:ShaderForge.SFN_Multiply,id:3843,x:31990,y:32614,varname:node_3843,prsc:2|A-8409-OUT,B-2230-OUT;n:type:ShaderForge.SFN_Lerp,id:1296,x:34114,y:32276,varname:node_1296,prsc:2|A-3178-OUT,B-5684-OUT,T-9990-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:9311,x:32315,y:33005,ptovrint:False,ptlb:rock albedo,ptin:_rockalbedo,varname:_rockalbedo,tex:37d471177e9735144b3dc8bee880e573,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:5429,x:31764,y:33074,ptovrint:False,ptlb:grass albedo,ptin:_grassalbedo,varname:_grassalbedo,tex:4b8d081e9d114c7f1100f5ab44295342,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6198,x:31825,y:33670,varname:_grassfade2,prsc:2,tex:4b8d081e9d114c7f1100f5ab44295342,ntxv:0,isnm:False|UVIN-7829-OUT,TEX-5429-TEX;n:type:ShaderForge.SFN_Distance,id:7805,x:30886,y:33125,varname:node_7805,prsc:2|A-3584-XYZ,B-4899-XYZ;n:type:ShaderForge.SFN_Divide,id:8869,x:31068,y:33167,varname:node_8869,prsc:2|A-7805-OUT,B-3990-OUT;n:type:ShaderForge.SFN_Power,id:3867,x:31230,y:33222,varname:node_3867,prsc:2|VAL-8869-OUT,EXP-5444-OUT;n:type:ShaderForge.SFN_Slider,id:5444,x:30990,y:33427,ptovrint:False,ptlb:far blend power,ptin:_farblendpower,varname:_farblendpower,prsc:2,min:0,cur:0.4415033,max:5;n:type:ShaderForge.SFN_ValueProperty,id:3990,x:30820,y:33381,ptovrint:False,ptlb:distance fade,ptin:_distancefade,varname:_distancefade,prsc:2,glob:False,v1:85;n:type:ShaderForge.SFN_Clamp01,id:1818,x:31811,y:33242,varname:node_1818,prsc:2|IN-3867-OUT;n:type:ShaderForge.SFN_Lerp,id:5684,x:32221,y:33332,varname:node_5684,prsc:2|A-6628-RGB,B-6198-RGB,T-1818-OUT;n:type:ShaderForge.SFN_Multiply,id:7829,x:31488,y:33573,varname:node_7829,prsc:2|A-2348-OUT,B-830-OUT;n:type:ShaderForge.SFN_ViewPosition,id:4899,x:30639,y:33236,varname:node_4899,prsc:2;n:type:ShaderForge.SFN_Slider,id:830,x:30931,y:33768,ptovrint:False,ptlb: grass lod 1 tile,ptin:_grasslod1tile,varname:_grasslod1tile,prsc:2,min:0,cur:0,max:0.35;n:type:ShaderForge.SFN_Tex2d,id:3966,x:33002,y:33580,varname:_node_8747,prsc:2,tex:4b8d081e9d114c7f1100f5ab44295342,ntxv:0,isnm:False|UVIN-6916-OUT,MIP-3918-OUT,TEX-5429-TEX;n:type:ShaderForge.SFN_Multiply,id:6916,x:32576,y:33727,varname:node_6916,prsc:2|A-7829-OUT,B-8075-OUT;n:type:ShaderForge.SFN_Slider,id:8075,x:31883,y:33999,ptovrint:False,ptlb:gras mask tile,ptin:_grasmasktile,varname:_grasmasktile,prsc:2,min:0,cur:0.1264229,max:1;n:type:ShaderForge.SFN_ValueProperty,id:3918,x:32321,y:34003,ptovrint:False,ptlb:gras mask blur,ptin:_grasmaskblur,varname:_grasmaskblur,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Tex2d,id:6200,x:33055,y:33783,varname:_128,prsc:2,tex:4b8d081e9d114c7f1100f5ab44295342,ntxv:0,isnm:False|UVIN-8166-OUT,MIP-5394-OUT,TEX-5429-TEX;n:type:ShaderForge.SFN_ValueProperty,id:5394,x:31513,y:34540,ptovrint:False,ptlb:gras mask blur 2,ptin:_grasmaskblur2,varname:_grasmaskblur2,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:8166,x:32234,y:34393,varname:node_8166,prsc:2|A-7829-OUT,B-8288-OUT;n:type:ShaderForge.SFN_Slider,id:8288,x:31150,y:34531,ptovrint:False,ptlb:gras mask tile 2,ptin:_grasmasktile2,varname:_grasmasktile2,prsc:2,min:0,cur:0.15,max:1;n:type:ShaderForge.SFN_Multiply,id:8643,x:31437,y:33823,varname:node_8643,prsc:2|A-2348-OUT,B-8362-OUT;n:type:ShaderForge.SFN_Slider,id:8362,x:30905,y:33975,ptovrint:False,ptlb: grass lod 0,ptin:_grasslod0,varname:_grasslod0,prsc:2,min:0,cur:0,max:3;n:type:ShaderForge.SFN_Tex2dAsset,id:1974,x:32173,y:33644,ptovrint:False,ptlb:grass normal,ptin:_grassnormal,varname:_grassnormal,tex:c0b73e5bb5bf96e44ba426507756d6c6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:7144,x:32640,y:33549,varname:_node_7144,prsc:2,tex:c0b73e5bb5bf96e44ba426507756d6c6,ntxv:0,isnm:False|UVIN-7829-OUT,TEX-1974-TEX;n:type:ShaderForge.SFN_Lerp,id:4049,x:33015,y:33369,varname:node_4049,prsc:2|A-5977-RGB,B-7144-RGB,T-1818-OUT;n:type:ShaderForge.SFN_Tex2d,id:5977,x:32640,y:33399,varname:_node_5977,prsc:2,tex:c0b73e5bb5bf96e44ba426507756d6c6,ntxv:0,isnm:False|UVIN-8643-OUT,TEX-1974-TEX;n:type:ShaderForge.SFN_Tex2d,id:3591,x:32572,y:32486,varname:_node_359115,prsc:2,tex:37d471177e9735144b3dc8bee880e573,ntxv:0,isnm:False|UVIN-5158-OUT,TEX-9311-TEX;n:type:ShaderForge.SFN_Multiply,id:5158,x:31975,y:32839,varname:node_5158,prsc:2|A-2348-OUT,B-2230-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:3178,x:33188,y:32300,varname:node_3178,prsc:2,chbt:0|M-9126-OUT,R-4090-RGB,G-3591-RGB,B-7082-RGB;n:type:ShaderForge.SFN_Tex2d,id:6288,x:32733,y:32436,varname:_rocknormaly,prsc:2,tex:11a83d38eeab664408cb7d088abe5a49,ntxv:3,isnm:True|UVIN-7442-OUT,TEX-6199-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:6199,x:32564,y:32984,ptovrint:True,ptlb:rock normal,ptin:_rocknormal23,varname:_rocknormal23,tex:11a83d38eeab664408cb7d088abe5a49,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:2893,x:32749,y:32617,varname:_node_28935,prsc:2,tex:11a83d38eeab664408cb7d088abe5a49,ntxv:3,isnm:True|UVIN-3843-OUT,TEX-6199-TEX;n:type:ShaderForge.SFN_Tex2d,id:7554,x:32749,y:32782,varname:_node_75545,prsc:2,tex:11a83d38eeab664408cb7d088abe5a49,ntxv:3,isnm:True|UVIN-5158-OUT,TEX-6199-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:8357,x:33350,y:32552,varname:node_8357,prsc:2,chbt:0|M-9126-OUT,R-6288-RGB,G-7554-RGB,B-2893-RGB;n:type:ShaderForge.SFN_Lerp,id:5762,x:34252,y:32486,varname:node_5762,prsc:2|A-8357-OUT,B-652-OUT,T-9990-OUT;n:type:ShaderForge.SFN_Slider,id:6493,x:33727,y:32485,ptovrint:False,ptlb:specular power,ptin:_specularpower,varname:_specularpower,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4721,x:34056,y:32959,ptovrint:False,ptlb:glossines,ptin:_glossines,varname:_glossines,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4333,x:34078,y:33085,ptovrint:False,ptlb:ambient,ptin:_ambient,varname:_ambient,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Max,id:6908,x:33305,y:33691,varname:node_6908,prsc:2|A-3966-R,B-3966-B;n:type:ShaderForge.SFN_Max,id:37,x:33325,y:33565,varname:node_37,prsc:2|A-6200-R,B-6200-G;n:type:ShaderForge.SFN_Multiply,id:4146,x:33292,y:33809,varname:node_4146,prsc:2|A-3966-G,B-6200-B;n:type:ShaderForge.SFN_Multiply,id:4940,x:33590,y:33437,varname:node_4940,prsc:2|A-37-OUT,B-6200-G;n:type:ShaderForge.SFN_Blend,id:5727,x:33911,y:33455,varname:node_5727,prsc:2,blmd:10,clmp:True|SRC-6908-OUT,DST-4940-OUT;n:type:ShaderForge.SFN_Blend,id:6120,x:34510,y:32338,varname:node_6120,prsc:2,blmd:7,clmp:True|SRC-4228-OUT,DST-5727-OUT;n:type:ShaderForge.SFN_Color,id:9621,x:34825,y:31904,ptovrint:False,ptlb:grass color1,ptin:_grasscolor1,varname:_grasscolor1,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:5763,x:34561,y:31938,ptovrint:False,ptlb:grass color2,ptin:_grasscolor2,varname:_grasscolor2,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:4068,x:34852,y:32137,varname:node_4068,prsc:2|A-5763-RGB,B-9621-RGB,T-6120-OUT;n:type:ShaderForge.SFN_Blend,id:1408,x:34782,y:32326,varname:node_1408,prsc:2,blmd:10,clmp:True|SRC-4068-OUT,DST-1296-OUT;n:type:ShaderForge.SFN_Normalize,id:652,x:33527,y:32982,varname:node_652,prsc:2|IN-4049-OUT;n:type:ShaderForge.SFN_Multiply,id:9990,x:33750,y:32124,varname:node_9990,prsc:2|A-3840-OUT,B-3840-OUT,C-3840-OUT;n:type:ShaderForge.SFN_OneMinus,id:2383,x:33321,y:33432,varname:node_2383,prsc:2|IN-3966-R;n:type:ShaderForge.SFN_Add,id:3445,x:33467,y:33275,varname:node_3445,prsc:2|A-2383-OUT,B-6200-G,C-3966-G;n:type:ShaderForge.SFN_Blend,id:4228,x:34469,y:32164,varname:node_4228,prsc:2,blmd:10,clmp:True|SRC-3445-OUT,DST-5727-OUT;n:type:ShaderForge.SFN_Tex2d,id:6725,x:34640,y:32783,varname:_node_6725,prsc:2,ntxv:0,isnm:False|UVIN-3305-OUT,TEX-3802-TEX;n:type:ShaderForge.SFN_Tex2d,id:797,x:34799,y:32978,varname:_node_797,prsc:2,ntxv:3,isnm:True|UVIN-3305-OUT,TEX-9837-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:3802,x:34287,y:33541,ptovrint:False,ptlb:grass detail,ptin:_grassdetail,varname:_grassdetail,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:9837,x:34484,y:33541,ptovrint:False,ptlb:grass detail normal,ptin:_grassdetailnormal,varname:_grassdetailnormal,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:3305,x:34164,y:33353,varname:node_3305,prsc:2|A-2348-OUT,B-8719-OUT;n:type:ShaderForge.SFN_Slider,id:8719,x:33634,y:33714,ptovrint:False,ptlb:detail tile,ptin:_detailtile,varname:_detailtile,prsc:2,min:0,cur:1,max:8;n:type:ShaderForge.SFN_Distance,id:3267,x:33751,y:33990,varname:node_3267,prsc:2|A-3584-XYZ,B-2169-XYZ;n:type:ShaderForge.SFN_Divide,id:2837,x:33933,y:34032,varname:node_2837,prsc:2|A-3267-OUT,B-142-OUT;n:type:ShaderForge.SFN_Power,id:3333,x:34166,y:34022,varname:node_3333,prsc:2|VAL-2837-OUT,EXP-5483-OUT;n:type:ShaderForge.SFN_Slider,id:5483,x:33855,y:34292,ptovrint:False,ptlb:distance factor,ptin:_distancefactor,varname:_distancefactor,prsc:2,min:0,cur:0.4415033,max:5;n:type:ShaderForge.SFN_ValueProperty,id:142,x:33685,y:34246,ptovrint:False,ptlb:distance detail,ptin:_distancedetail,varname:_distancedetail,prsc:2,glob:False,v1:85;n:type:ShaderForge.SFN_ViewPosition,id:2169,x:33504,y:34101,varname:node_2169,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:5934,x:34338,y:32749,varname:node_5934,prsc:2|IN-3333-OUT;n:type:ShaderForge.SFN_NormalBlend,id:2412,x:34590,y:32519,varname:node_2412,prsc:2|BSE-5762-OUT,DTL-797-RGB;n:type:ShaderForge.SFN_Lerp,id:4398,x:34870,y:32533,varname:node_4398,prsc:2|A-2412-OUT,B-5762-OUT,T-5934-OUT;n:type:ShaderForge.SFN_Lerp,id:6548,x:35007,y:32247,varname:node_6548,prsc:2|A-190-OUT,B-1408-OUT,T-5934-OUT;n:type:ShaderForge.SFN_Blend,id:190,x:35201,y:32087,varname:node_190,prsc:2,blmd:10,clmp:True|SRC-6725-RGB,DST-1408-OUT;n:type:ShaderForge.SFN_Lerp,id:7318,x:35093,y:32402,varname:node_7318,prsc:2|A-6548-OUT,B-1408-OUT,T-1964-OUT;n:type:ShaderForge.SFN_Slider,id:1964,x:34852,y:32843,ptovrint:False,ptlb:detail diffuse factor,ptin:_detaildiffusefactor,varname:_detaildiffusefactor,prsc:2,min:0,cur:0,max:1;proporder:5164-2230-9311-5429-5444-3990-830-8075-3918-5394-8288-8362-1974-6199-6493-4721-4333-9621-5763-9837-8719-5483-142-3802-1964;pass:END;sub:END;*/

Shader "Almgp_shader_pack/vol1/grunt_grassstone_world_space_automap_lightmap" {
    Properties {
        _tiling ("tiling", Float ) = 1
        _rocktexturetile ("rock texture tile", Range(0, 1)) = 0.6239327
        _rockalbedo ("rock albedo", 2D) = "white" {}
        _grassalbedo ("grass albedo", 2D) = "white" {}
        _farblendpower ("far blend power", Range(0, 5)) = 0.4415033
        _distancefade ("distance fade", Float ) = 85
        _grasslod1tile (" grass lod 1 tile", Range(0, 0.35)) = 0
        _grasmasktile ("gras mask tile", Range(0, 1)) = 0.1264229
        _grasmaskblur ("gras mask blur", Float ) = 5
        _grasmaskblur2 ("gras mask blur 2", Float ) = 2
        _grasmasktile2 ("gras mask tile 2", Range(0, 1)) = 0.15
        _grasslod0 (" grass lod 0", Range(0, 3)) = 0
        _grassnormal ("grass normal", 2D) = "bump" {}
        _rocknormal23 ("rock normal", 2D) = "bump" {}
        _specularpower ("specular power", Range(0, 1)) = 0
        _glossines ("glossines", Range(0, 1)) = 0
        _ambient ("ambient", Range(0, 1)) = 0
        _grasscolor1 ("grass color1", Color) = (0.5,0.5,0.5,1)
        _grasscolor2 ("grass color2", Color) = (0.5,0.5,0.5,1)
        _grassdetailnormal ("grass detail normal", 2D) = "bump" {}
        _detailtile ("detail tile", Range(0, 8)) = 1
        _distancefactor ("distance factor", Range(0, 5)) = 0.4415033
        _distancedetail ("distance detail", Float ) = 85
        _grassdetail ("grass detail", 2D) = "white" {}
        _detaildiffusefactor ("detail diffuse factor", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float _tiling;
            uniform float _rocktexturetile;
            uniform sampler2D _rockalbedo; uniform float4 _rockalbedo_ST;
            uniform sampler2D _grassalbedo; uniform float4 _grassalbedo_ST;
            uniform float _farblendpower;
            uniform float _distancefade;
            uniform float _grasslod1tile;
            uniform float _grasmasktile;
            uniform float _grasmaskblur;
            uniform float _grasmaskblur2;
            uniform float _grasmasktile2;
            uniform float _grasslod0;
            uniform sampler2D _grassnormal; uniform float4 _grassnormal_ST;
            uniform sampler2D _rocknormal23; uniform float4 _rocknormal23_ST;
            uniform float _specularpower;
            uniform float _glossines;
            uniform float4 _grasscolor1;
            uniform float4 _grasscolor2;
            uniform sampler2D _grassdetail; uniform float4 _grassdetail_ST;
            uniform sampler2D _grassdetailnormal; uniform float4 _grassdetailnormal_ST;
            uniform float _detailtile;
            uniform float _distancefactor;
            uniform float _distancedetail;
            uniform float _detaildiffusefactor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
            #endif
            #ifdef DYNAMICLIGHTMAP_ON
                o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
            #endif
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
            o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
            o.posWorld = mul(unity_ObjectToWorld, v.vertex);
            float3 lightColor = _LightColor0.rgb;
            o.pos = UnityObjectToClipPos(v.vertex);
            UNITY_TRANSFER_FOG(o,o.pos);
            TRANSFER_VERTEX_TO_FRAGMENT(o)
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 abs_normaldir = abs(i.normalDir);
            float3 node_9126 = (abs_normaldir*abs_normaldir);
            float2 node_7442 = ((float2(i.posWorld.g,i.posWorld.b)*_tiling)*_rocktexturetile);
            float3 _rocknormaly = UnpackNormal(tex2D(_rocknormal23,TRANSFORM_TEX(node_7442, _rocknormal23)));
            float2 node_2348 = (float2(i.posWorld.b,i.posWorld.r)*_tiling);
            float2 node_5158 = (node_2348*_rocktexturetile);
            float3 _node_75545 = UnpackNormal(tex2D(_rocknormal23,TRANSFORM_TEX(node_5158, _rocknormal23)));
            float2 node_3843 = ((float2(i.posWorld.r,i.posWorld.g)*_tiling)*_rocktexturetile);
            float3 _node_28935 = UnpackNormal(tex2D(_rocknormal23,TRANSFORM_TEX(node_3843, _rocknormal23)));
            float2 node_8643 = (node_2348*_grasslod0);
            float3 _node_5977 = UnpackNormal(tex2D(_grassnormal,TRANSFORM_TEX(node_8643, _grassnormal)));
            float2 node_7829 = (node_2348*_grasslod1tile);
            float3 _node_7144 = UnpackNormal(tex2D(_grassnormal,TRANSFORM_TEX(node_7829, _grassnormal)));
            float node_1818 = saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_distancefade),_farblendpower));
            float node_3840 = node_9126.g;
            float node_9990 = (node_3840*node_3840*node_3840);
            float3 node_5762 = lerp((node_9126.r*_rocknormaly.rgb + node_9126.g*_node_75545.rgb + node_9126.b*_node_28935.rgb),normalize(lerp(_node_5977.rgb,_node_7144.rgb,node_1818)),node_9990);
            float2 node_3305 = (node_2348*_detailtile);
            float3 _node_797 = UnpackNormal(tex2D(_grassdetailnormal,TRANSFORM_TEX(node_3305, _grassdetailnormal)));
            float3 node_2412_nrm_base = node_5762 + float3(0,0,1);
            float3 node_2412_nrm_detail = _node_797.rgb * float3(-1,-1,1);
            float3 node_2412_nrm_combined = node_2412_nrm_base*dot(node_2412_nrm_base, node_2412_nrm_detail)/node_2412_nrm_base.z - node_2412_nrm_detail;
            float3 node_2412 = node_2412_nrm_combined;
            float node_5934 = saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_distancedetail),_distancefactor));
            float3 normalLocal = lerp(node_2412,node_5762,node_5934);
            float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
            float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
            float3 lightColor = _LightColor0.rgb;
            float3 halfDirection = normalize(viewDirection+lightDirection);
// Lighting:
            float attenuation = LIGHT_ATTENUATION(i);
            float3 attenColor = attenuation * _LightColor0.xyz;
            float Pi = 3.141592654;
            float InvPi = 0.31830988618;
///// Gloss:
            float gloss = 1.0 - _glossines; // Convert roughness to gloss
            float specPow = exp2( gloss * 10.0+1.0);
/// GI Data:
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
            #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                d.ambient = 0;
                d.lightmapUV = i.ambientOrLightmapUV;
            #else
                d.ambient = i.ambientOrLightmapUV;
            #endif
            UnityGI gi = UnityGlobalIllumination (d, 1, gloss, normalDirection);
            lightDirection = gi.light.dir;
            lightColor = gi.light.color;
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float LdotH = max(0.0,dot(lightDirection, halfDirection));
            float3 specularColor = float3(_specularpower,_specularpower,_specularpower);
            float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
            float NdotV = max(0.0,dot( normalDirection, viewDirection ));
            float NdotH = max(0.0,dot( normalDirection, halfDirection ));
            float VdotH = max(0.0,dot( viewDirection, halfDirection ));
            float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
            float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
            float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
            float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
            float3 specular = directSpecular;
/// Diffuse:
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
            float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
            float3 indirectDiffuse = float3(0,0,0);
            indirectDiffuse += gi.indirect.diffuse;
            float4 _node_6725 = tex2D(_grassdetail,TRANSFORM_TEX(node_3305, _grassdetail));
            float2 node_6916 = (node_7829*_grasmasktile);
            float4 _node_8747 = tex2Dlod(_grassalbedo,float4(TRANSFORM_TEX(node_6916, _grassalbedo),0.0,_grasmaskblur));
            float2 node_8166 = (node_7829*_grasmasktile2);
            float4 _128 = tex2Dlod(_grassalbedo,float4(TRANSFORM_TEX(node_8166, _grassalbedo),0.0,_grasmaskblur2));
            float node_5727 = saturate(( (max(_128.r,_128.g)*_128.g) > 0.5 ? (1.0-(1.0-2.0*((max(_128.r,_128.g)*_128.g)-0.5))*(1.0-max(_node_8747.r,_node_8747.b))) : (2.0*(max(_128.r,_128.g)*_128.g)*max(_node_8747.r,_node_8747.b)) ));
            float4 _rocktexturez = tex2D(_rockalbedo,TRANSFORM_TEX(node_7442, _rockalbedo));
            float4 _node_359115 = tex2D(_rockalbedo,TRANSFORM_TEX(node_5158, _rockalbedo));
            float4 _rocktexturey = tex2D(_rockalbedo,TRANSFORM_TEX(node_3843, _rockalbedo));
            float4 _grasstexture = tex2D(_grassalbedo,TRANSFORM_TEX(node_8643, _grassalbedo));
            float4 _grassfade2 = tex2D(_grassalbedo,TRANSFORM_TEX(node_7829, _grassalbedo));
            float3 node_1408 = saturate(( lerp((node_9126.r*_rocktexturez.rgb + node_9126.g*_node_359115.rgb + node_9126.b*_rocktexturey.rgb),lerp(_grasstexture.rgb,_grassfade2.rgb,node_1818),node_9990) > 0.5 ? (1.0-(1.0-2.0*(lerp((node_9126.r*_rocktexturez.rgb + node_9126.g*_node_359115.rgb + node_9126.b*_rocktexturey.rgb),lerp(_grasstexture.rgb,_grassfade2.rgb,node_1818),node_9990)-0.5))*(1.0-lerp(_grasscolor2.rgb,_grasscolor1.rgb,saturate((node_5727/(1.0-saturate(( node_5727 > 0.5 ? (1.0-(1.0-2.0*(node_5727-0.5))*(1.0-((1.0 - _node_8747.r)+_128.g+_node_8747.g))) : (2.0*node_5727*((1.0 - _node_8747.r)+_128.g+_node_8747.g)) )))))))) : (2.0*lerp((node_9126.r*_rocktexturez.rgb + node_9126.g*_node_359115.rgb + node_9126.b*_rocktexturey.rgb),lerp(_grasstexture.rgb,_grassfade2.rgb,node_1818),node_9990)*lerp(_grasscolor2.rgb,_grasscolor1.rgb,saturate((node_5727/(1.0-saturate(( node_5727 > 0.5 ? (1.0-(1.0-2.0*(node_5727-0.5))*(1.0-((1.0 - _node_8747.r)+_128.g+_node_8747.g))) : (2.0*node_5727*((1.0 - _node_8747.r)+_128.g+_node_8747.g)) ))))))) ));
            float3 diffuseColor = lerp(lerp(saturate(( node_1408 > 0.5 ? (1.0-(1.0-2.0*(node_1408-0.5))*(1.0-_node_6725.rgb)) : (2.0*node_1408*_node_6725.rgb) )),node_1408,node_5934),node_1408,_detaildiffusefactor);
            diffuseColor *= 1-specularMonochrome;
            float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
// Final Color:
            float3 finalColor = diffuse + specular;
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
        #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
        #include "UnityCG.cginc"
        #include "AutoLight.cginc"
        #include "Lighting.cginc"
        #include "UnityPBSLighting.cginc"
        #include "UnityStandardBRDF.cginc"
        #pragma multi_compile_fwdadd_fullshadows
        #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
        #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
        #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fog
        #pragma exclude_renderers metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
        #pragma target 3.0
        #pragma glsl
        uniform float _tiling;
        uniform float _rocktexturetile;
        uniform sampler2D _rockalbedo; uniform float4 _rockalbedo_ST;
        uniform sampler2D _grassalbedo; uniform float4 _grassalbedo_ST;
        uniform float _farblendpower;
        uniform float _distancefade;
        uniform float _grasslod1tile;
        uniform float _grasmasktile;
        uniform float _grasmaskblur;
        uniform float _grasmaskblur2;
        uniform float _grasmasktile2;
        uniform float _grasslod0;
        uniform sampler2D _grassnormal; uniform float4 _grassnormal_ST;
        uniform sampler2D _rocknormal23; uniform float4 _rocknormal23_ST;
        uniform float _specularpower;
        uniform float _glossines;
        uniform float4 _grasscolor1;
        uniform float4 _grasscolor2;
        uniform sampler2D _grassdetail; uniform float4 _grassdetail_ST;
        uniform sampler2D _grassdetailnormal; uniform float4 _grassdetailnormal_ST;
        uniform float _detailtile;
        uniform float _distancefactor;
        uniform float _distancedetail;
        uniform float _detaildiffusefactor;
        struct VertexInput {
            float4 vertex : POSITION;
            float3 normal : NORMAL;
            float4 tangent : TANGENT;
            float2 texcoord1 : TEXCOORD1;
            float2 texcoord2 : TEXCOORD2;
        };
        struct VertexOutput {
            float4 pos : SV_POSITION;
            float2 uv1 : TEXCOORD0;
            float2 uv2 : TEXCOORD1;
            float4 posWorld : TEXCOORD2;
            float3 normalDir : TEXCOORD3;
            float3 tangentDir : TEXCOORD4;
            float3 bitangentDir : TEXCOORD5;
            LIGHTING_COORDS(6,7)
        };
        VertexOutput vert (VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.uv1 = v.texcoord1;
            o.uv2 = v.texcoord2;
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
            o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
            o.posWorld = mul(unity_ObjectToWorld, v.vertex);
            float3 lightColor = _LightColor0.rgb;
            o.pos = UnityObjectToClipPos(v.vertex);
            TRANSFER_VERTEX_TO_FRAGMENT(o)
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 abs_normaldir = abs(i.normalDir);
            float3 node_9126 = (abs_normaldir*abs_normaldir);
            float2 node_7442 = ((float2(i.posWorld.g,i.posWorld.b)*_tiling)*_rocktexturetile);
            float3 _rocknormaly = UnpackNormal(tex2D(_rocknormal23,TRANSFORM_TEX(node_7442, _rocknormal23)));
            float2 node_2348 = (float2(i.posWorld.b,i.posWorld.r)*_tiling);
            float2 node_5158 = (node_2348*_rocktexturetile);
            float3 _node_75545 = UnpackNormal(tex2D(_rocknormal23,TRANSFORM_TEX(node_5158, _rocknormal23)));
            float2 node_3843 = ((float2(i.posWorld.r,i.posWorld.g)*_tiling)*_rocktexturetile);
            float3 _node_28935 = UnpackNormal(tex2D(_rocknormal23,TRANSFORM_TEX(node_3843, _rocknormal23)));
            float2 node_8643 = (node_2348*_grasslod0);
            float3 _node_5977 = UnpackNormal(tex2D(_grassnormal,TRANSFORM_TEX(node_8643, _grassnormal)));
            float2 node_7829 = (node_2348*_grasslod1tile);
            float3 _node_7144 = UnpackNormal(tex2D(_grassnormal,TRANSFORM_TEX(node_7829, _grassnormal)));
            float node_1818 = saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_distancefade),_farblendpower));
            float node_3840 = node_9126.g;
            float node_9990 = (node_3840*node_3840*node_3840);
            float3 node_5762 = lerp((node_9126.r*_rocknormaly.rgb + node_9126.g*_node_75545.rgb + node_9126.b*_node_28935.rgb),normalize(lerp(_node_5977.rgb,_node_7144.rgb,node_1818)),node_9990);
            float2 node_3305 = (node_2348*_detailtile);
            float3 _node_797 = UnpackNormal(tex2D(_grassdetailnormal,TRANSFORM_TEX(node_3305, _grassdetailnormal)));
            float3 node_2412_nrm_base = node_5762 + float3(0,0,1);
            float3 node_2412_nrm_detail = _node_797.rgb * float3(-1,-1,1);
            float3 node_2412_nrm_combined = node_2412_nrm_base*dot(node_2412_nrm_base, node_2412_nrm_detail)/node_2412_nrm_base.z - node_2412_nrm_detail;
            float3 node_2412 = node_2412_nrm_combined;
            float node_5934 = saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_distancedetail),_distancefactor));
            float3 normalLocal = lerp(node_2412,node_5762,node_5934);
            float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
            float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
            float3 lightColor = _LightColor0.rgb;
            float3 halfDirection = normalize(viewDirection+lightDirection);
// Lighting:
            float attenuation = LIGHT_ATTENUATION(i);
            float3 attenColor = attenuation * _LightColor0.xyz;
            float Pi = 3.141592654;
            float InvPi = 0.31830988618;
///// Gloss:
            float gloss = 1.0 - _glossines; // Convert roughness to gloss
            float specPow = exp2( gloss * 10.0+1.0);
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float LdotH = max(0.0,dot(lightDirection, halfDirection));
            float3 specularColor = float3(_specularpower,_specularpower,_specularpower);
            float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
            float NdotV = max(0.0,dot( normalDirection, viewDirection ));
            float NdotH = max(0.0,dot( normalDirection, halfDirection ));
            float VdotH = max(0.0,dot( viewDirection, halfDirection ));
            float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
            float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
            float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
            float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
            float3 specular = directSpecular;
/// Diffuse:
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
            float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
            float4 _node_6725 = tex2D(_grassdetail,TRANSFORM_TEX(node_3305, _grassdetail));
            float2 node_6916 = (node_7829*_grasmasktile);
            float4 _node_8747 = tex2Dlod(_grassalbedo,float4(TRANSFORM_TEX(node_6916, _grassalbedo),0.0,_grasmaskblur));
            float2 node_8166 = (node_7829*_grasmasktile2);
            float4 _128 = tex2Dlod(_grassalbedo,float4(TRANSFORM_TEX(node_8166, _grassalbedo),0.0,_grasmaskblur2));
            float node_5727 = saturate(( (max(_128.r,_128.g)*_128.g) > 0.5 ? (1.0-(1.0-2.0*((max(_128.r,_128.g)*_128.g)-0.5))*(1.0-max(_node_8747.r,_node_8747.b))) : (2.0*(max(_128.r,_128.g)*_128.g)*max(_node_8747.r,_node_8747.b)) ));
            float4 _rocktexturez = tex2D(_rockalbedo,TRANSFORM_TEX(node_7442, _rockalbedo));
            float4 _node_359115 = tex2D(_rockalbedo,TRANSFORM_TEX(node_5158, _rockalbedo));
            float4 _rocktexturey = tex2D(_rockalbedo,TRANSFORM_TEX(node_3843, _rockalbedo));
            float4 _grasstexture = tex2D(_grassalbedo,TRANSFORM_TEX(node_8643, _grassalbedo));
            float4 _grassfade2 = tex2D(_grassalbedo,TRANSFORM_TEX(node_7829, _grassalbedo));
            float3 node_1408 = saturate(( lerp((node_9126.r*_rocktexturez.rgb + node_9126.g*_node_359115.rgb + node_9126.b*_rocktexturey.rgb),lerp(_grasstexture.rgb,_grassfade2.rgb,node_1818),node_9990) > 0.5 ? (1.0-(1.0-2.0*(lerp((node_9126.r*_rocktexturez.rgb + node_9126.g*_node_359115.rgb + node_9126.b*_rocktexturey.rgb),lerp(_grasstexture.rgb,_grassfade2.rgb,node_1818),node_9990)-0.5))*(1.0-lerp(_grasscolor2.rgb,_grasscolor1.rgb,saturate((node_5727/(1.0-saturate(( node_5727 > 0.5 ? (1.0-(1.0-2.0*(node_5727-0.5))*(1.0-((1.0 - _node_8747.r)+_128.g+_node_8747.g))) : (2.0*node_5727*((1.0 - _node_8747.r)+_128.g+_node_8747.g)) )))))))) : (2.0*lerp((node_9126.r*_rocktexturez.rgb + node_9126.g*_node_359115.rgb + node_9126.b*_rocktexturey.rgb),lerp(_grasstexture.rgb,_grassfade2.rgb,node_1818),node_9990)*lerp(_grasscolor2.rgb,_grasscolor1.rgb,saturate((node_5727/(1.0-saturate(( node_5727 > 0.5 ? (1.0-(1.0-2.0*(node_5727-0.5))*(1.0-((1.0 - _node_8747.r)+_128.g+_node_8747.g))) : (2.0*node_5727*((1.0 - _node_8747.r)+_128.g+_node_8747.g)) ))))))) ));
            float3 diffuseColor = lerp(lerp(saturate(( node_1408 > 0.5 ? (1.0-(1.0-2.0*(node_1408-0.5))*(1.0-_node_6725.rgb)) : (2.0*node_1408*_node_6725.rgb) )),node_1408,node_5934),node_1408,_detaildiffusefactor);
            diffuseColor *= 1-specularMonochrome;
            float3 diffuse = directDiffuse * diffuseColor;
// Final Color:
            float3 finalColor = diffuse + specular;
            return fixed4(finalColor * 1,0);
        }
        ENDCG
    }
    Pass {
        Name "Meta"
        Tags {
            "LightMode"="Meta"
        }
        Cull Off
        
        CGPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #define UNITY_PASS_META 1
        #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
        #include "UnityCG.cginc"
        #include "Lighting.cginc"
        #include "UnityPBSLighting.cginc"
        #include "UnityStandardBRDF.cginc"
        #include "UnityMetaPass.cginc"
        #pragma fragmentoption ARB_precision_hint_fastest
        #pragma multi_compile_shadowcaster
        #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
        #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
        #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fog
        #pragma exclude_renderers metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
        #pragma target 3.0
        #pragma glsl
        uniform float _tiling;
        uniform float _rocktexturetile;
        uniform sampler2D _rockalbedo; uniform float4 _rockalbedo_ST;
        uniform sampler2D _grassalbedo; uniform float4 _grassalbedo_ST;
        uniform float _farblendpower;
        uniform float _distancefade;
        uniform float _grasslod1tile;
        uniform float _grasmasktile;
        uniform float _grasmaskblur;
        uniform float _grasmaskblur2;
        uniform float _grasmasktile2;
        uniform float _grasslod0;
        uniform float _specularpower;
        uniform float _glossines;
        uniform float4 _grasscolor1;
        uniform float4 _grasscolor2;
        uniform sampler2D _grassdetail; uniform float4 _grassdetail_ST;
        uniform float _detailtile;
        uniform float _distancefactor;
        uniform float _distancedetail;
        uniform float _detaildiffusefactor;
        struct VertexInput {
            float4 vertex : POSITION;
            float3 normal : NORMAL;
            float2 texcoord1 : TEXCOORD1;
            float2 texcoord2 : TEXCOORD2;
        };
        struct VertexOutput {
            float4 pos : SV_POSITION;
            float2 uv1 : TEXCOORD0;
            float2 uv2 : TEXCOORD1;
            float4 posWorld : TEXCOORD2;
            float3 normalDir : TEXCOORD3;
        };
        VertexOutput vert (VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.uv1 = v.texcoord1;
            o.uv2 = v.texcoord2;
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.posWorld = mul(unity_ObjectToWorld, v.vertex);
            o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
            return o;
        }
        float4 frag(VertexOutput i) : SV_Target {
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 normalDirection = i.normalDir;
            UnityMetaInput o;
            UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
            
            o.Emission = 0;
            
            float2 node_2348 = (float2(i.posWorld.b,i.posWorld.r)*_tiling);
            float2 node_3305 = (node_2348*_detailtile);
            float4 _node_6725 = tex2D(_grassdetail,TRANSFORM_TEX(node_3305, _grassdetail));
            float2 node_7829 = (node_2348*_grasslod1tile);
            float2 node_6916 = (node_7829*_grasmasktile);
            float4 _node_8747 = tex2Dlod(_grassalbedo,float4(TRANSFORM_TEX(node_6916, _grassalbedo),0.0,_grasmaskblur));
            float2 node_8166 = (node_7829*_grasmasktile2);
            float4 _128 = tex2Dlod(_grassalbedo,float4(TRANSFORM_TEX(node_8166, _grassalbedo),0.0,_grasmaskblur2));
            float node_5727 = saturate(( (max(_128.r,_128.g)*_128.g) > 0.5 ? (1.0-(1.0-2.0*((max(_128.r,_128.g)*_128.g)-0.5))*(1.0-max(_node_8747.r,_node_8747.b))) : (2.0*(max(_128.r,_128.g)*_128.g)*max(_node_8747.r,_node_8747.b)) ));
            float3 abs_normaldir = abs(i.normalDir);
            float3 node_9126 = (abs_normaldir*abs_normaldir);
            float2 node_7442 = ((float2(i.posWorld.g,i.posWorld.b)*_tiling)*_rocktexturetile);
            float4 _rocktexturez = tex2D(_rockalbedo,TRANSFORM_TEX(node_7442, _rockalbedo));
            float2 node_5158 = (node_2348*_rocktexturetile);
            float4 _node_359115 = tex2D(_rockalbedo,TRANSFORM_TEX(node_5158, _rockalbedo));
            float2 node_3843 = ((float2(i.posWorld.r,i.posWorld.g)*_tiling)*_rocktexturetile);
            float4 _rocktexturey = tex2D(_rockalbedo,TRANSFORM_TEX(node_3843, _rockalbedo));
            float2 node_8643 = (node_2348*_grasslod0);
            float4 _grasstexture = tex2D(_grassalbedo,TRANSFORM_TEX(node_8643, _grassalbedo));
            float4 _grassfade2 = tex2D(_grassalbedo,TRANSFORM_TEX(node_7829, _grassalbedo));
            float node_1818 = saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_distancefade),_farblendpower));
            float node_3840 = node_9126.g;
            float node_9990 = (node_3840*node_3840*node_3840);
            float3 node_1408 = saturate(( lerp((node_9126.r*_rocktexturez.rgb + node_9126.g*_node_359115.rgb + node_9126.b*_rocktexturey.rgb),lerp(_grasstexture.rgb,_grassfade2.rgb,node_1818),node_9990) > 0.5 ? (1.0-(1.0-2.0*(lerp((node_9126.r*_rocktexturez.rgb + node_9126.g*_node_359115.rgb + node_9126.b*_rocktexturey.rgb),lerp(_grasstexture.rgb,_grassfade2.rgb,node_1818),node_9990)-0.5))*(1.0-lerp(_grasscolor2.rgb,_grasscolor1.rgb,saturate((node_5727/(1.0-saturate(( node_5727 > 0.5 ? (1.0-(1.0-2.0*(node_5727-0.5))*(1.0-((1.0 - _node_8747.r)+_128.g+_node_8747.g))) : (2.0*node_5727*((1.0 - _node_8747.r)+_128.g+_node_8747.g)) )))))))) : (2.0*lerp((node_9126.r*_rocktexturez.rgb + node_9126.g*_node_359115.rgb + node_9126.b*_rocktexturey.rgb),lerp(_grasstexture.rgb,_grassfade2.rgb,node_1818),node_9990)*lerp(_grasscolor2.rgb,_grasscolor1.rgb,saturate((node_5727/(1.0-saturate(( node_5727 > 0.5 ? (1.0-(1.0-2.0*(node_5727-0.5))*(1.0-((1.0 - _node_8747.r)+_128.g+_node_8747.g))) : (2.0*node_5727*((1.0 - _node_8747.r)+_128.g+_node_8747.g)) ))))))) ));
            float node_5934 = saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_distancedetail),_distancefactor));
            float3 diffColor = lerp(lerp(saturate(( node_1408 > 0.5 ? (1.0-(1.0-2.0*(node_1408-0.5))*(1.0-_node_6725.rgb)) : (2.0*node_1408*_node_6725.rgb) )),node_1408,node_5934),node_1408,_detaildiffusefactor);
            float3 specColor = float3(_specularpower,_specularpower,_specularpower);
            float specularMonochrome = max(max(specColor.r, specColor.g),specColor.b);
            diffColor *= (1.0-specularMonochrome);
            float roughness = _glossines;
            o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
            
            return UnityMetaFragment( o );
        }
        ENDCG
    }
}
FallBack "Diffuse"
}
