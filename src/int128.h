#include <stdint.h>

// TODO [zephyr111]: should we actually support another compiler than Clang (version >=16)?

/*#ifndef UINT128_MAX
#if defined(__clang_major__) && __clang_major__ >= 18 || defined(__GNUC__) && __GNUC__ >= 14
using int128_t = _BitInt(128);
using uint128_t = unsigned _BitInt(128);
#elif defined(__SIZEOF_INT128__)
using int128_t = __int128;
using uint128_t = unsigned __int128;
#endif
#endif*/

using int128_t = _BitInt(128);
using uint128_t = unsigned _BitInt(128);
