/+ ------------------------------------------------------------ +
 + Author : aoitofu <aoitofu@dr.com>                            +
 + This is part of CAFE ( https://github.com/aoitofu/CAFE ).    +
 + ------------------------------------------------------------ +
 + Please see /LICENSE.                                         +
 + ------------------------------------------------------------ +/
module cafe.gui.BitmapLight;
import cafe.renderer.graphics.Bitmap,
       cafe.renderer.graphics.Color;
import std.conv;
import dlangui;

debug = 0;

/+ BMPViewerコンポーネントに直接渡せるBitmapクラス +/
class BitmapLight : ColorDrawBuf
{
    public:
        /+ 通常のBMPから生成 +/
        this ( BMP src )
        {
            super( src.width.to!int, src.height.to!int );
            _buf = src.bitmap;
        }
}
