#pragma once

#include <lean_pod.h>
#include "util.h"
#include "include/raymath_lean.h"

#ifdef LEAN_RAYLIB_LIBFFI
#include <ffi.h>
#endif

// # Color

static inline Color lean_raylib_Color_from(uint32_t color) {
    Color res = {
        .r = (uint8_t)((color >> 24) & 0xFF),
        .g = (uint8_t)((color >> 16) & 0xFF),
        .b = (uint8_t)((color >> 8) & 0xFF),
        .a = (uint8_t)(color & 0xFF),
    };
    return res;
}

static inline uint32_t lean_raylib_Color_to(Color color) {
    return (color.r << 24) | (color.g << 16) | (color.b << 8) | color.a;
}


// # Rectangle

static inline void lean_raylib_Rectangle_set (b_lean_obj_arg obj, Rectangle r) {
    lean_ctor_set(obj, 0, lean_box_uint32(lean_pod_Float32_toBits(r.x)));
    lean_ctor_set(obj, 1, lean_box_uint32(lean_pod_Float32_toBits(r.y)));
    lean_ctor_set(obj, 2, lean_box_uint32(lean_pod_Float32_toBits(r.width)));
    lean_ctor_set(obj, 3, lean_box_uint32(lean_pod_Float32_toBits(r.height)));
}

static inline lean_object* lean_raylib_Rectangle_to (Rectangle r) {
    lean_object* obj = lean_alloc_ctor(0, 4, 0);
    lean_raylib_Rectangle_set(obj, r);
    return obj;
}

static inline Rectangle lean_raylib_Rectangle_from (b_lean_obj_arg obj) {
    Rectangle r;
    r.x = lean_pod_Float32_fromBits(lean_unbox_uint32(lean_ctor_get(obj, 0)));
    r.y = lean_pod_Float32_fromBits(lean_unbox_uint32(lean_ctor_get(obj, 1)));
    r.width = lean_pod_Float32_fromBits(lean_unbox_uint32(lean_ctor_get(obj, 2)));
    r.height = lean_pod_Float32_fromBits(lean_unbox_uint32(lean_ctor_get(obj, 3)));
    return r;
}


// # Image

static inline Image* lean_raylib_Image_from (b_lean_obj_arg obj) {
    return (Image*) lean_get_external_data(obj);
}

static void lean_raylib_Image_finalize(void* image) {
    UnloadImage(*(Image*)image);
    free(image);
}

static inline lean_object* lean_raylib_Image_to (Image const* obj) {
    static lean_external_class* class_ = NULL;
    if (class_ == NULL) {
        class_ = lean_register_external_class(lean_raylib_Image_finalize, lean_raylib_default_foreach);
    }
    return lean_alloc_external(class_, (void*)obj);
}

static inline lean_obj_res lean_raylib_Image_exclusive(lean_obj_arg image_box) {
    if (LEAN_LIKELY(lean_is_exclusive(image_box))) {
        return image_box;
    }
    LET_BOX(Image, image_copy, ImageCopy(*lean_raylib_Image_from(image_box)));
    lean_object* image_copy_box = lean_raylib_Image_to(image_copy);
    lean_dec_ref(image_box);
    return image_copy_box;
}


// # Texture

typedef struct {
    lean_object* owner; // NOT NULLABLE
    Texture texture;
} lean_raylib_TextureRef;

static void lean_raylib_TextureRef_foreach(void* textureRef, b_lean_obj_arg f) {
    lean_object* owner = ((lean_raylib_TextureRef*)textureRef)->owner;
    lean_inc_ref(f);
    lean_inc(owner);
    lean_apply_1(f, owner);
}

static void lean_raylib_TextureRef_finalize(void* textureRef) {
    lean_dec(((lean_raylib_TextureRef*)textureRef)->owner);
    free(textureRef);
}

static inline lean_object* lean_raylib_TextureRef_alloc (Texture2D texture, lean_obj_arg owner) {
    LET_BOX_STRUCT(lean_raylib_TextureRef, textureRef,
        .texture = texture,
        .owner = owner,
    );
    static lean_external_class* class_ = NULL;
    if (class_ == NULL) {
        class_ = lean_register_external_class(lean_raylib_TextureRef_finalize, lean_raylib_TextureRef_foreach);
    }
    return lean_alloc_external(class_, textureRef);
}

static inline lean_raylib_TextureRef const* lean_raylib_TextureRef_from (b_lean_obj_arg obj) {
    return (lean_raylib_TextureRef const*) lean_get_external_data(obj);
}

static void lean_raylib_Texture_finalize(void* texture) {
    UnloadTexture(*(Texture*)texture);
    free(texture);
}

static inline lean_object* lean_raylib_Texture_to (Texture const* obj) {
    static lean_external_class* class_ = NULL;
    if (class_ == NULL) {
        class_ = lean_register_external_class(lean_raylib_Texture_finalize, lean_raylib_default_foreach);
    }
    return lean_alloc_external(class_, (void*)obj);
}

static inline Texture* lean_raylib_Texture_from (b_lean_obj_arg obj) {
    return (Texture*) lean_get_external_data(obj);
}


// # Render texture

static void lean_raylib_RenderTexture_finalize(void* texture) {
    UnloadRenderTexture(*(RenderTexture*)texture);
    free(texture);
}

static inline lean_object* lean_raylib_RenderTexture_to (RenderTexture const* obj) {
    static lean_external_class* class_ = NULL;
    if (class_ == NULL) {
        class_ = lean_register_external_class(lean_raylib_RenderTexture_finalize, lean_raylib_default_foreach);
    }
    return lean_alloc_external(class_, (void*)obj);
}

static inline RenderTexture const* lean_raylib_RenderTexture_from (b_lean_obj_arg obj) {
    return (RenderTexture const*) lean_get_external_data(obj);
}


// # NPatch info

static inline lean_object* lean_raylib_NPatchInfo_to (NPatchInfo const* obj) {
    static lean_external_class* class_ = NULL;
    if (class_ == NULL) {
        class_ = lean_register_external_class(free, lean_raylib_default_foreach);
    }
    return lean_alloc_external(class_, (void*)obj);
}

static inline NPatchInfo* lean_raylib_NPatchInfo_from (b_lean_obj_arg obj) {
    return (NPatchInfo*) lean_get_external_data(obj);
}


// # Glyph info

// static inline void lean_raylib_GlyphInfo_set (b_lean_obj_arg obj, uint32_t value, uint32_t offsetX, uint32_t offsetY, uint32_t advanceX, lean_obj_arg image) {
//     lean_ctor_set(obj, 0, lean_box_uint32(value));
//     lean_ctor_set(obj, 1, lean_box_uint32(offsetX));
//     lean_ctor_set(obj, 2, lean_box_uint32(offsetY));
//     lean_ctor_set(obj, 3, lean_box_uint32(advanceX));
//     lean_ctor_set(obj, 4, image);
// }

// static inline lean_object* lean_raylib_GlyphInfo_to (GlyphInfo r) {
//     lean_object* obj = lean_alloc_ctor(0, 5, 0);
//     LET_BOX(Image, image, r.image);
//     lean_raylib_GlyphInfo_set(obj, r.value, r.offsetX, r.offsetY, r.advanceX, lean_raylib_Image_to(image));
//     return obj;
// }

// static inline GlyphInfo lean_raylib_GlyphInfo_from (b_lean_obj_arg obj) {
//     GlyphInfo r;
//     r.value = lean_unbox_uint32(lean_ctor_get(obj, 0));
//     r.offsetX = lean_unbox_uint32(lean_ctor_get(obj, 1));
//     r.offsetY = lean_unbox_uint32(lean_ctor_get(obj, 2));
//     r.advanceX = lean_unbox_uint32(lean_ctor_get(obj, 3));
//     r.image = *lean_raylib_Image_from(lean_ctor_get(obj, 4));
//     return r;
// }


// # Font

static void lean_raylib_Font_finalize(void* font) {
    UnloadFont(*(Font*)font);
    free(font);
}

static inline lean_object* lean_raylib_Font_to (Font const* obj) {
    static lean_external_class* class_ = NULL;
    if (class_ == NULL) {
        class_ = lean_register_external_class(lean_raylib_Font_finalize, lean_raylib_default_foreach);
    }
    return lean_alloc_external(class_, (void*)obj);
}

static inline Font const* lean_raylib_Font_from (b_lean_obj_arg obj) {
    return (Font const*) lean_get_external_data(obj);
}


// # Camera 3D

static inline void lean_raylib_Camera3D_set (b_lean_obj_arg obj, Camera3D cam) {
    lean_dec_ref(lean_ctor_get(obj, 0));
    lean_ctor_set(obj, 0, lean_raylib_Vector3_to(cam.position));
    lean_dec_ref(lean_ctor_get(obj, 1));
    lean_ctor_set(obj, 1, lean_raylib_Vector3_to(cam.target));
    lean_dec_ref(lean_ctor_get(obj, 2));
    lean_ctor_set(obj, 2, lean_raylib_Vector3_to(cam.up));
    lean_ctor_set(obj, 3, lean_box_uint32(lean_pod_Float32_toBits(cam.fovy)));
    lean_ctor_set(obj, 4, lean_box_uint32(cam.projection));
}

static inline lean_object* lean_raylib_Camera3D_to (Camera3D cam) {
    lean_object* obj = lean_alloc_ctor(0, 5, 0);
    lean_raylib_Camera3D_set(obj, cam);
    return obj;
}

static inline Camera3D lean_raylib_Camera3D_from (b_lean_obj_arg obj) {
    Camera3D cam;
    cam.position = lean_raylib_Vector3_from(lean_ctor_get(obj, 0));
    cam.target = lean_raylib_Vector3_from(lean_ctor_get(obj, 1));
    cam.up = lean_raylib_Vector3_from(lean_ctor_get(obj, 2));
    cam.fovy = lean_pod_Float32_fromBits(lean_unbox_uint32(lean_ctor_get(obj, 3)));
    cam.projection = lean_unbox_uint32(lean_ctor_get(obj, 4));
    return cam;
}


// # Camera 2D

static inline void lean_raylib_Camera2D_set (b_lean_obj_arg obj, Camera2D cam) {
    lean_dec_ref(lean_ctor_get(obj, 0));
    lean_ctor_set(obj, 0, lean_raylib_Vector2_to(cam.offset));
    lean_dec_ref(lean_ctor_get(obj, 1));
    lean_ctor_set(obj, 1, lean_raylib_Vector2_to(cam.target));
    lean_ctor_set(obj, 2, lean_box_uint32(lean_pod_Float32_toBits(cam.rotation)));
    lean_ctor_set(obj, 3, lean_box_uint32(lean_pod_Float32_toBits(cam.zoom)));
}

static inline lean_object* lean_raylib_Camera2D_to (Camera2D cam) {
    lean_object* obj = lean_alloc_ctor(0, 4, 0);
    lean_raylib_Camera2D_set(obj, cam);
    return obj;
}

static inline Camera2D lean_raylib_Camera2D_from (b_lean_obj_arg obj) {
    Camera2D cam;
    cam.offset = lean_raylib_Vector2_from(lean_ctor_get(obj, 0));
    cam.target = lean_raylib_Vector2_from(lean_ctor_get(obj, 1));
    cam.rotation = lean_pod_Float32_fromBits(lean_unbox_uint32(lean_ctor_get(obj, 2)));
    cam.zoom = lean_pod_Float32_fromBits(lean_unbox_uint32(lean_ctor_get(obj, 3)));
    return cam;
}


// # Mesh

static void lean_raylib_Mesh_finalize(void* mesh) {
    UnloadMesh(*(Mesh*)mesh);
    free(mesh);
}

static inline lean_object* lean_raylib_Mesh_to (Mesh const* obj) {
    static lean_external_class* class_ = NULL;
    if (class_ == NULL) {
        class_ = lean_register_external_class(lean_raylib_Mesh_finalize, lean_raylib_default_foreach);
    }
    return lean_alloc_external(class_, (void*)obj);
}

static inline Mesh* lean_raylib_Mesh_from (b_lean_obj_arg obj) {
    return (Mesh*) lean_get_external_data(obj);
}


// # Shader

static void lean_raylib_Shader_finalize(void* shader) {
    UnloadShader(*(Shader*)shader);
    free(shader);
}

static inline lean_object* lean_raylib_Shader_to (Shader const* obj) {
    static lean_external_class* class_ = NULL;
    if (class_ == NULL) {
        class_ = lean_register_external_class(lean_raylib_Shader_finalize, lean_raylib_default_foreach);
    }
    return lean_alloc_external(class_, (void*)obj);
}

static inline Shader const* lean_raylib_Shader_from (b_lean_obj_arg obj) {
    return (Shader const*) lean_get_external_data(obj);
}

lean_obj_res lean_raylib__Shader_getDefault(lean_obj_arg unit);


// # Material

// NOTE: Returned mmap contains pointers to data owned by the boxed mmap!
static inline MaterialMap lean_raylib_MaterialMap_from (b_lean_obj_arg mmap_box) {
    MaterialMap mmap;
    mmap.texture = *lean_raylib_Texture_from(lean_ctor_get(mmap_box, 0));
    mmap.color = lean_raylib_Color_from(lean_unbox_uint32(lean_ctor_get(mmap_box, 1)));
    mmap.value = lean_pod_Float32_unbox(lean_ctor_get(mmap_box, 2));
    return mmap;
}

static inline lean_obj_res lean_raylib_MaterialMap_to (lean_obj_arg texture, Color color, float value) {
    lean_object* mmap = lean_alloc_ctor(0, 3, 0);
    lean_ctor_set(mmap, 0, texture);
    lean_ctor_set(mmap, 1, lean_box_uint32(lean_raylib_Color_to(color)));
    lean_ctor_set(mmap, 2, lean_pod_Float32_box(value));
    return mmap;
}

#define LEAN_RAYLIB_MAX_MATERIAL_MAPS 12 // todo: configure from lake (and pass to raylib)

// NOTE: Returned material contains pointers to `out_mmaps` and to data owned by the boxed material!
static inline Material lean_raylib_Material_from (b_lean_obj_arg material_box, MaterialMap* out_mmaps) {
    Material material;
    material.shader = *lean_raylib_Shader_from(lean_ctor_get(material_box, 0));
    lean_object* mmaps = lean_ctor_get(material_box, 1);
    for(size_t i = 0; i < LEAN_RAYLIB_MAX_MATERIAL_MAPS; ++i) {
        out_mmaps[i] = lean_raylib_MaterialMap_from(lean_array_get_core(mmaps, i));
    }
    material.maps = out_mmaps;
    material.params[0] = lean_pod_Float32_unbox(lean_ctor_get(material_box, 2));
    material.params[1] = lean_pod_Float32_unbox(lean_ctor_get(material_box, 3));
    material.params[2] = lean_pod_Float32_unbox(lean_ctor_get(material_box, 4));
    material.params[3] = lean_pod_Float32_unbox(lean_ctor_get(material_box, 5));
    return material;
}

static inline lean_obj_res lean_raylib_Material_to (lean_obj_arg shader, lean_obj_arg mmaps, Vector4 params) {
    lean_object* material = lean_alloc_ctor(0, 6, 0);
    lean_ctor_set(material, 0, shader);
    lean_ctor_set(material, 1, mmaps);
    lean_ctor_set(material, 2, lean_pod_Float32_box(params.x));
    lean_ctor_set(material, 3, lean_pod_Float32_box(params.y));
    lean_ctor_set(material, 4, lean_pod_Float32_box(params.z));
    lean_ctor_set(material, 5, lean_pod_Float32_box(params.w));
    return material;
}

// # Transform

// static inline lean_object* lean_raylib_Transform_to (Transform const* obj) {
//     static lean_external_class* class_ = NULL;
//     if (class_ == NULL) {
//         class_ = lean_register_external_class(free, lean_raylib_default_foreach);
//     }
//     return lean_alloc_external(class_, (void*)obj);
// }

// static inline Transform const* lean_raylib_Transform_from (b_lean_obj_arg obj) {
//     return (Transform const*) lean_get_external_data(obj);
// }

// static inline lean_object* lean_raylib_BoneInfo_to (BoneInfo const* obj) {
//     static lean_external_class* class_ = NULL;
//     if (class_ == NULL) {
//         class_ = lean_register_external_class(free, lean_raylib_default_foreach);
//     }
//     return lean_alloc_external(class_, (void*)obj);
// }

// static inline BoneInfo const* lean_raylib_BoneInfo_from (b_lean_obj_arg obj) {
//     return (BoneInfo const*) lean_get_external_data(obj);
// }

// static inline lean_object* lean_raylib_Model_to (Model const* obj) {
//     static lean_external_class* class_ = NULL;
//     if (class_ == NULL) {
//         class_ = lean_register_external_class(free, lean_raylib_default_foreach);
//     }
//     return lean_alloc_external(class_, (void*)obj);
// }

// static inline Model const* lean_raylib_Model_from (b_lean_obj_arg obj) {
//     return (Model const*) lean_get_external_data(obj);
// }

// static inline lean_object* lean_raylib_ModelAnimation_to (ModelAnimation const* obj) {
//     static lean_external_class* class_ = NULL;
//     if (class_ == NULL) {
//         class_ = lean_register_external_class(free, lean_raylib_default_foreach);
//     }
//     return lean_alloc_external(class_, (void*)obj);
// }

// static inline ModelAnimation const* lean_raylib_ModelAnimation_from (b_lean_obj_arg obj) {
//     return (ModelAnimation const*) lean_get_external_data(obj);
// }


// # Ray

static inline void lean_raylib_Ray_set (b_lean_obj_arg obj, Ray ray) {
    lean_dec_ref(lean_ctor_get(obj, 0));
    lean_ctor_set(obj, 0, lean_raylib_Vector3_to(ray.position));
    lean_dec_ref(lean_ctor_get(obj, 1));
    lean_ctor_set(obj, 1, lean_raylib_Vector3_to(ray.direction));
}

static inline lean_object* lean_raylib_Ray_to (Ray v) {
    lean_object* obj = lean_alloc_ctor(0, 2, 0);
    lean_raylib_Ray_set(obj, v);
    return obj;
}

static inline Ray lean_raylib_Ray_from (b_lean_obj_arg obj) {
    Ray ray;
    ray.position = lean_raylib_Vector3_from(lean_ctor_get(obj, 0));
    ray.direction = lean_raylib_Vector3_from(lean_ctor_get(obj, 1));
    return ray;
}


// # Ray collision

static inline void lean_raylib_RayCollision_set (b_lean_obj_arg obj, RayCollision rayCol) {
    lean_ctor_set(obj, 0, lean_box(rayCol.hit));
    lean_ctor_set(obj, 1, lean_pod_Float32_box(rayCol.distance));
    lean_dec_ref(lean_ctor_get(obj, 2));
    lean_ctor_set(obj, 2, lean_raylib_Vector3_to(rayCol.point));
    lean_dec_ref(lean_ctor_get(obj, 3));
    lean_ctor_set(obj, 3, lean_raylib_Vector3_to(rayCol.normal));
}

static inline lean_object* lean_raylib_RayCollision_to (RayCollision v) {
    lean_object* obj = lean_alloc_ctor(0, 4, 0);
    lean_raylib_RayCollision_set(obj, v);
    return obj;
}

static inline RayCollision lean_raylib_RayCollision_from (b_lean_obj_arg obj) {
    RayCollision rayCol;
    rayCol.hit = lean_unbox(lean_ctor_get(obj, 0));
    rayCol.distance = lean_pod_Float32_unbox(lean_ctor_get(obj, 1));
    rayCol.point = lean_raylib_Vector3_from(lean_ctor_get(obj, 2));
    rayCol.normal = lean_raylib_Vector3_from(lean_ctor_get(obj, 3));
    return rayCol;
}


// # Bounding box

static inline void lean_raylib_BoundingBox_set (b_lean_obj_arg obj, BoundingBox bb) {
    lean_dec_ref(lean_ctor_get(obj, 0));
    lean_ctor_set(obj, 0, lean_raylib_Vector3_to(bb.min));
    lean_dec_ref(lean_ctor_get(obj, 1));
    lean_ctor_set(obj, 1, lean_raylib_Vector3_to(bb.max));
}

static inline lean_object* lean_raylib_BoundingBox_to (BoundingBox bb) {
    lean_object* obj = lean_alloc_ctor(0, 2, 0);
    lean_raylib_BoundingBox_set(obj, bb);
    return obj;
}

static inline BoundingBox lean_raylib_BoundingBox_from (b_lean_obj_arg obj) {
    BoundingBox bb;
    bb.min = lean_raylib_Vector3_from(lean_ctor_get(obj, 0));
    bb.max = lean_raylib_Vector3_from(lean_ctor_get(obj, 1));
    return bb;
}


// # Wave

static void lean_raylib_Wave_finalize(void* wave) {
    UnloadWave(*(Wave*)wave);
    free(wave);
}

static inline lean_object* lean_raylib_Wave_to (Wave const* obj) {
    static lean_external_class* class_ = NULL;
    if (class_ == NULL) {
        class_ = lean_register_external_class(lean_raylib_Wave_finalize, lean_raylib_default_foreach);
    }
    return lean_alloc_external(class_, (void*)obj);
}

static inline Wave* lean_raylib_Wave_from (b_lean_obj_arg obj) {
    return (Wave*) lean_get_external_data(obj);
}


// # Audio stream

typedef struct {
    AudioStream stream;
#ifdef LEAN_RAYLIB_LIBFFI
    ffi_closure* closure; // NULLABLE
#endif
} lean_raylib_AudioStream;

static void lean_raylib_AudioStream_finalize(void* audioStream_v) {
    lean_raylib_AudioStream* audioStream = audioStream_v;
    UnloadAudioStream(audioStream->stream);
#ifdef LEAN_RAYLIB_LIBFFI
    if (audioStream->closure != NULL) {
        lean_dec_ref(audioStream->closure->user_data);
        ffi_closure_free(audioStream->closure);
    }
#endif
    free(audioStream);
}

static void lean_raylib_AudioStream_foreach(void* audioStream, b_lean_obj_arg f) {
#ifdef LEAN_RAYLIB_LIBFFI
    if (((lean_raylib_AudioStream*)audioStream)->closure != NULL) {
        lean_inc_ref(f);
        lean_object* callback = ((lean_raylib_AudioStream*)audioStream)->closure->user_data;
        lean_inc(callback);
        lean_apply_1(f, callback);
    }
#endif
}

static inline lean_object* lean_raylib_AudioStream_to (AudioStream stream, void* closure) {
    static lean_external_class* class_ = NULL;
    if (class_ == NULL) {
        class_ = lean_register_external_class(lean_raylib_AudioStream_finalize, lean_raylib_AudioStream_foreach);
    }
    lean_raylib_AudioStream* stream_heap = malloc(sizeof(lean_raylib_AudioStream));
    stream_heap->stream = stream;
#ifdef LEAN_RAYLIB_LIBFFI
    stream_heap->closure = closure;
#endif
    return lean_alloc_external(class_, (void*)stream_heap);
}

static inline lean_raylib_AudioStream* lean_raylib_AudioStream_from (b_lean_obj_arg obj) {
    return (lean_raylib_AudioStream*) lean_get_external_data(obj);
}


// # Sound

static void lean_raylib_Sound_finalize(void* sound) {
    UnloadSound(*(Sound*)sound);
    free(sound);
}

static inline lean_object* lean_raylib_Sound_to (Sound const* obj) {
    static lean_external_class* class_ = NULL;
    if (class_ == NULL) {
        class_ = lean_register_external_class(lean_raylib_Sound_finalize, lean_raylib_default_foreach);
    }
    return lean_alloc_external(class_, (void*)obj);
}

static inline Sound const* lean_raylib_Sound_from (b_lean_obj_arg obj) {
    return (Sound const*) lean_get_external_data(obj);
}


// # Music

static void lean_raylib_Music_finalize(void* music) {
    UnloadMusicStream(*(Music*)music);
    free(music);
}

static inline lean_object* lean_raylib_Music_to (Music const* obj) {
    static lean_external_class* class_ = NULL;
    if (class_ == NULL) {
        class_ = lean_register_external_class(lean_raylib_Music_finalize, lean_raylib_default_foreach);
    }
    return lean_alloc_external(class_, (void*)obj);
}

static inline Music * lean_raylib_Music_from (b_lean_obj_arg obj) {
    return (Music*) lean_get_external_data(obj);
}


// # Vr device info

static inline void lean_raylib_VrDeviceInfo_set (b_lean_obj_arg obj, VrDeviceInfo* vrDeviceInfo) {
    lean_ctor_set(obj, 0, lean_box_uint32(vrDeviceInfo->hResolution));
    lean_ctor_set(obj, 1, lean_box_uint32(vrDeviceInfo->vResolution));
    lean_ctor_set(obj, 2, lean_pod_Float32_box(vrDeviceInfo->hScreenSize));
    lean_ctor_set(obj, 3, lean_pod_Float32_box(vrDeviceInfo->vScreenSize));
    lean_ctor_set(obj, 4, lean_pod_Float32_box(vrDeviceInfo->vScreenCenter));
    lean_ctor_set(obj, 5, lean_pod_Float32_box(vrDeviceInfo->eyeToScreenDistance));
    lean_ctor_set(obj, 6, lean_pod_Float32_box(vrDeviceInfo->lensSeparationDistance));
    lean_ctor_set(obj, 7, lean_pod_Float32_box(vrDeviceInfo->interpupillaryDistance));
    lean_dec_ref(lean_ctor_get(obj, 8));
    Vector4 lensDistortionValues;
    lensDistortionValues.x = vrDeviceInfo->lensDistortionValues[0];
    lensDistortionValues.y = vrDeviceInfo->lensDistortionValues[1];
    lensDistortionValues.z = vrDeviceInfo->lensDistortionValues[2];
    lensDistortionValues.w = vrDeviceInfo->lensDistortionValues[3];
    lean_ctor_set(obj, 8, lean_raylib_Vector4_to(lensDistortionValues));
    lean_dec_ref(lean_ctor_get(obj, 9));
    Vector4 chromaAbCorrection;
    chromaAbCorrection.x = vrDeviceInfo->chromaAbCorrection[0];
    chromaAbCorrection.y = vrDeviceInfo->chromaAbCorrection[1];
    chromaAbCorrection.z = vrDeviceInfo->chromaAbCorrection[2];
    chromaAbCorrection.w = vrDeviceInfo->chromaAbCorrection[3];
    lean_ctor_set(obj, 9, lean_raylib_Vector4_to(chromaAbCorrection));
}

static inline lean_object* lean_raylib_VrDeviceInfo_to (VrDeviceInfo* vrDeviceInfo) {
    lean_object* obj = lean_alloc_ctor(0, 10, 0);
    lean_raylib_VrDeviceInfo_set(obj, vrDeviceInfo);
    return obj;
}

static inline VrDeviceInfo lean_raylib_VrDeviceInfo_from (b_lean_obj_arg obj) {
    VrDeviceInfo vrDeviceInfo;
    vrDeviceInfo.hResolution = lean_unbox_uint32(lean_ctor_get(obj, 0));
    vrDeviceInfo.vResolution = lean_unbox_uint32(lean_ctor_get(obj, 1));
    vrDeviceInfo.hScreenSize = lean_pod_Float32_unbox(lean_ctor_get(obj, 2));
    vrDeviceInfo.vScreenSize = lean_pod_Float32_unbox(lean_ctor_get(obj, 3));
    vrDeviceInfo.vScreenCenter = lean_pod_Float32_unbox(lean_ctor_get(obj, 4));
    vrDeviceInfo.eyeToScreenDistance = lean_pod_Float32_unbox(lean_ctor_get(obj, 5));
    vrDeviceInfo.lensSeparationDistance = lean_pod_Float32_unbox(lean_ctor_get(obj, 6));
    vrDeviceInfo.interpupillaryDistance = lean_pod_Float32_unbox(lean_ctor_get(obj, 7));
    Vector4 lensDistortionValues = lean_raylib_Vector4_from(lean_ctor_get(obj, 8));
    vrDeviceInfo.lensDistortionValues[0] = lensDistortionValues.x;
    vrDeviceInfo.lensDistortionValues[1] = lensDistortionValues.y;
    vrDeviceInfo.lensDistortionValues[2] = lensDistortionValues.z;
    vrDeviceInfo.lensDistortionValues[3] = lensDistortionValues.w;
    Vector4 chromaAbCorrection = lean_raylib_Vector4_from(lean_ctor_get(obj, 9));
    vrDeviceInfo.chromaAbCorrection[0] = chromaAbCorrection.x;
    vrDeviceInfo.chromaAbCorrection[1] = chromaAbCorrection.y;
    vrDeviceInfo.chromaAbCorrection[2] = chromaAbCorrection.z;
    vrDeviceInfo.chromaAbCorrection[3] = chromaAbCorrection.w;
    return vrDeviceInfo;
}


// # Vr stereo config

static inline void lean_raylib_VrStereoConfig_set (b_lean_obj_arg obj, VrStereoConfig* vrStereoConfig) {
    lean_ctor_set(obj, 0, lean_raylib_Matrix_to(vrStereoConfig->projection[0]));
    lean_ctor_set(obj, 1, lean_raylib_Matrix_to(vrStereoConfig->projection[1]));
    lean_ctor_set(obj, 2, lean_raylib_Matrix_to(vrStereoConfig->viewOffset[0]));
    lean_ctor_set(obj, 3, lean_raylib_Matrix_to(vrStereoConfig->viewOffset[1]));
    lean_dec_ref(lean_ctor_get(obj, 4));
    Vector2 leftLensCenter;
    leftLensCenter.x = vrStereoConfig->leftLensCenter[0];
    leftLensCenter.y = vrStereoConfig->leftLensCenter[1];
    lean_ctor_set(obj, 4, lean_raylib_Vector2_to(leftLensCenter));
    lean_dec_ref(lean_ctor_get(obj, 5));
    Vector2 rightLensCenter;
    rightLensCenter.x = vrStereoConfig->rightLensCenter[0];
    rightLensCenter.y = vrStereoConfig->rightLensCenter[1];
    lean_ctor_set(obj, 5, lean_raylib_Vector2_to(rightLensCenter));
    lean_dec_ref(lean_ctor_get(obj, 6));
    Vector2 leftScreenCenter;
    leftScreenCenter.x = vrStereoConfig->leftScreenCenter[0];
    leftScreenCenter.y = vrStereoConfig->leftScreenCenter[1];
    lean_ctor_set(obj, 6, lean_raylib_Vector2_to(leftScreenCenter));
    lean_dec_ref(lean_ctor_get(obj, 7));
    Vector2 rightScreenCenter;
    rightScreenCenter.x = vrStereoConfig->rightScreenCenter[0];
    rightScreenCenter.y = vrStereoConfig->rightScreenCenter[1];
    lean_ctor_set(obj, 7, lean_raylib_Vector2_to(rightScreenCenter));
    lean_dec_ref(lean_ctor_get(obj, 8));
    Vector2 scale;
    scale.x = vrStereoConfig->scale[0];
    scale.y = vrStereoConfig->scale[1];
    lean_ctor_set(obj, 8, lean_raylib_Vector2_to(scale));
    lean_dec_ref(lean_ctor_get(obj, 9));
    Vector2 scaleIn;
    scaleIn.x = vrStereoConfig->scaleIn[0];
    scaleIn.y = vrStereoConfig->scaleIn[1];
    lean_ctor_set(obj, 9, lean_raylib_Vector2_to(scaleIn));
}

static inline lean_object* lean_raylib_VrStereoConfig_to (VrStereoConfig* vrStereoConfig) {
    lean_object* obj = lean_alloc_ctor(0, 10, 0);
    lean_raylib_VrStereoConfig_set(obj, vrStereoConfig);
    return obj;
}

static inline VrStereoConfig lean_raylib_VrStereoConfig_from (b_lean_obj_arg obj) {
    VrStereoConfig vrStereoConfig;
    vrStereoConfig.projection[0] = lean_raylib_Matrix_from(lean_ctor_get(obj, 0));
    vrStereoConfig.projection[1] = lean_raylib_Matrix_from(lean_ctor_get(obj, 1));
    vrStereoConfig.viewOffset[0] = lean_raylib_Matrix_from(lean_ctor_get(obj, 2));
    vrStereoConfig.viewOffset[1] = lean_raylib_Matrix_from(lean_ctor_get(obj, 3));
    Vector2 leftLensCenter = lean_raylib_Vector2_from(lean_ctor_get(obj, 4));
    vrStereoConfig.leftLensCenter[0] = leftLensCenter.x;
    vrStereoConfig.leftLensCenter[1] = leftLensCenter.y;
    Vector2 rightLensCenter = lean_raylib_Vector2_from(lean_ctor_get(obj, 5));
    vrStereoConfig.rightLensCenter[0] = rightLensCenter.x;
    vrStereoConfig.rightLensCenter[1] = rightLensCenter.y;
    Vector2 leftScreenCenter = lean_raylib_Vector2_from(lean_ctor_get(obj, 6));
    vrStereoConfig.leftScreenCenter[0] = leftScreenCenter.x;
    vrStereoConfig.leftScreenCenter[1] = leftScreenCenter.y;
    Vector2 rightScreenCenter = lean_raylib_Vector2_from(lean_ctor_get(obj, 7));
    vrStereoConfig.rightScreenCenter[0] = rightScreenCenter.x;
    vrStereoConfig.rightScreenCenter[1] = rightScreenCenter.y;
    Vector2 scale = lean_raylib_Vector2_from(lean_ctor_get(obj, 8));
    vrStereoConfig.scale[0] = scale.x;
    vrStereoConfig.scale[1] = scale.y;
    Vector2 scaleIn = lean_raylib_Vector2_from(lean_ctor_get(obj, 9));
    vrStereoConfig.scaleIn[0] = scaleIn.x;
    vrStereoConfig.scaleIn[1] = scaleIn.y;
    return vrStereoConfig;
}


// # Window Handle

static inline lean_object* lean_raylib_WindowHandle_box (void* handle) {
    static lean_external_class* class_ = NULL;
    if (class_ == NULL) {
        class_ = lean_register_external_class(lean_raylib_default_finalize, lean_raylib_default_foreach);
    }
    return lean_alloc_external(class_, handle);
}
