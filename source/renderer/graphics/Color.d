/+ ------------------------------------------------------------ +
 + Author : aoitofu <aoitofu@dr.com>                            +
 + This is part of CAFE ( https://github.com/aoitofu/CAFE ).    +
 + ------------------------------------------------------------ +
 + Please see /LICENSE.                                         +
 + ------------------------------------------------------------ +/
module cafe.renderer.graphics.Color;
import std.algorithm,
       std.conv;

debug = 1;

/+ RGBA色情報                                     +
 + RGBAの値はそれぞれfloatで保持し、劣化を防ぎます +/
struct RGBA
{
    public:
        float r,g,b;
        float a;

        this ( float r, float g, float b, float a = 0 )
        {
            this.r = r; this.g = g; this.b = b; this.a = a;
        }

        /+ uint型に正規化して変換 +/
        @property uint toHex ()
        {
            ubyte n ( float f )
            {
                return max( min( f, ubyte.max ), ubyte.min ).to!ubyte;
            }
            return (n(r) << 16) | (n(g) << 8) | n(b) | (n(a) << 24);
        }

        debug (1) unittest {
            auto hoge = RGBA( 255, 0, 0 );
            assert( hoge.toHex == 0xff0000 );
        }
}
