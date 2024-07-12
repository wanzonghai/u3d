using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Sprites;


/// <summary>
/// 修改Mesh，通过UV0.zw的设置，让材质的mask贴图可以获得正确的uv数据。
/// 支持共用材质，从而支持合批。
/// </summary>
[AddComponentMenu("UI/Effects/Mask Image")]
[RequireComponent(typeof(Image))]
public class MaskImage : BaseMeshEffect
{
    protected Image image;

    protected override void Awake()
    {
        image = this.GetComponent<Image>();
    }

    public override void ModifyMesh(VertexHelper vh)
    {
        if (!IsActive())
            return;

        Vector4 uv = image.overrideSprite != null ? DataUtility.GetOuterUV(image.overrideSprite) : Vector4.zero;
        float uvWidth = uv.z - uv.x;
        float uvHeight = uv.w - uv.y;
        if (uvWidth == 0 || uvHeight == 0)
        {
            return;
        }

        int vertCount = vh.currentVertCount;
        var vert = new UIVertex();
        for (int i = 0; i < vertCount; ++i)
        {
            vh.PopulateUIVertex(ref vert, i);

            vert.uv0.z = (vert.uv0.x - uv.x) / uvWidth;
            vert.uv0.w = (vert.uv0.y - uv.y) / uvHeight;
            vh.SetUIVertex(vert, i);
        }
    }
}