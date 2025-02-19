#pragma once

#include <hex/impl/imhex_check.pat>

#include <std/mem.pat>

/*!
    Library to allow decoding of more complex values
*/

namespace hex::dec {

    /**
        Demangles a mangled name into a human readable name
        @param mangled_name The mangled name
        @return The demangled name
    */
    fn demangle(str mangled_name) {
        return builtin::hex::dec::demangle(mangled_name);
    };


    /**
        Decompresses the bytes of a pattern into a section using the zlib algorithm
        @param pattern The pattern whose bytes should be decompressed
        @param sectionId The section to decompress the data into
        @param window_size The window size passed to zlib
        @return true if successful, false otherwise
    */
    fn zlib_decompress(ref auto pattern, std::mem::SectionId sectionId, u64 window_size = 0) {
        return builtin::hex::dec::zlib_decompress(pattern, sectionId, window_size);
    };

    /**
        Decompresses the bytes of a pattern into a section using the bzip algorithm
        @param pattern The pattern whose bytes should be decompressed
        @param sectionId The section to decompress the data into
        @return true if successful, false otherwise
    */
    fn bzip_decompress(ref auto pattern, std::mem::SectionId sectionId) {
        return builtin::hex::dec::bzip_decompress(pattern, sectionId);
    };

    /**
        Decompresses the bytes of a pattern into a section using the LZMA algorithm
        @param pattern The pattern whose bytes should be decompressed
        @param sectionId The section to decompress the data into
        @return true if successful, false otherwise
    */
    fn lzma_decompress(ref auto pattern, std::mem::SectionId sectionId) {
        return builtin::hex::dec::lzma_decompress(pattern, sectionId);
    };

    /**
        Decompresses the bytes of a pattern into a section using the zstd algorithm
        @param pattern The pattern whose bytes should be decompressed
        @param sectionId The section to decompress the data into
        @return true if successful, false otherwise
    */
    fn zstd_decompress(ref auto pattern, std::mem::SectionId sectionId) {
        return builtin::hex::dec::zstd_decompress(pattern, sectionId);
    };
    
}