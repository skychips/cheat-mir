#ifndef __CHEAT_UTILS_H__
#define __CHEAT_UTILS_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_stdint.h>
#include <details/cheat_callback.h>
#include <details/cheat_duration.h>
#include <details/cheat_untlity.h>

#include <cstdint>
#include <iostream>
#include <fstream>
#include <sstream>
#include <filesystem>
#include <algorithm>
#include <iterator>
#include <tuple>
#include <atomic>

#include <functional>
#include <random>
#include <codecvt>
#include <locale>
#include <regex>
#include <stdexcept>
#include <string>
#include <array>
#include <unordered_map>

#include <immintrin.h>

namespace Mir
{
    static constexpr char charhexset[] = "0123456789ABCDEFabcdef";

    class LeaveStack
    {
    public:
        explicit LeaveStack(const Handler& callback) : leave_callback(callback) {};
        virtual ~LeaveStack()
        {
            if (nullptr != leave_callback)
            {
                leave_callback();
            }
        }
    private:
        Handler                                                     leave_callback;
    };

    static std::uintmax_t GetFileSize(const std::filesystem::path& fs)
    {
        if (std::filesystem::exists(fs))
        {
            return std::filesystem::file_size(fs);
        }
        return 0;
    }

    static bool GetFileSize(const double file_size, std::string& buffer)
    {
        constexpr static const char* format[] = { "EiB", "PiB", "TiB", "GiB", "MiB", "KiB", "B" };

        if (buffer.size())
        {
            return false;
        }

        for (auto [i, j] = std::make_tuple(std::size_t(0), static_cast<double>(1024ULL << 0x32)); i < std::size(format); ++i, j /= 1024.0F)
        {
            if (file_size < j)
            {
                continue;
            }

            if (buffer.empty())
            {
                buffer.append(std::to_string(static_cast<double>(file_size / j)));
                buffer.append(" ");
                buffer.append(format[i]);
            }
            break;
        }

        return true;
    }

    static bool GetFileSize(const std::string& file_name, std::string& buffer)
    {
        if (file_name.empty())
        {
            return false;
        }

        return GetFileSize(static_cast<double>(GetFileSize(std::filesystem::absolute(std::filesystem::path(file_name)))), buffer);
    }

    static bool ExistsFile(const std::filesystem::path& fs)
    {
        return std::filesystem::exists(fs);
    }

    static bool ExistsDirectory(const std::string& path)
    {
        if (path.empty())
        {
            return false;
        }
        return std::filesystem::exists(std::filesystem::absolute(std::filesystem::path(path)));
    }

    static bool ExistsSubDirectory(const std::filesystem::path& absolute/* "dir/subdir/subdir"; */, const std::filesystem::path& relative /* subdir/subdir*/)
    {
        return std::search(absolute.begin(), absolute.end(), relative.begin(), relative.end()) != absolute.end();
    }

    static bool GetFileName(const std::string& path, std::string& buffer)
    {
        if (path.empty())
        {
            return false;
        }
        else
        {
            buffer.swap(*const_cast<std::string*>(std::addressof(static_cast<const std::string&>(std::move(std::filesystem::path(path).filename().string())))));
        }
        return true;
    }

    static bool GetFileName(const std::string& path, std::wstring& buffer)
    {
        if (path.empty())
        {
            return false;
        }
        else
        {
            buffer.swap(*const_cast<std::wstring*>(std::addressof(static_cast<const std::wstring&>(std::move(std::filesystem::path(path).filename().wstring())))));
        }
        return true;
    }

    static bool LoadSystemFile(const std::string& file, std::string& buffer, const std::filesystem::path& fs)
    {
        if (ExistsFile(fs))
        {
            if (buffer.size())
            {
                buffer.clear();
                buffer.shrink_to_fit();
            }

            try
            {
                buffer.swap(*const_cast<std::string*>(std::addressof(static_cast<const std::string&>(std::move(std::string((std::istreambuf_iterator<char>(*const_cast<std::ifstream*>(std::addressof(static_cast<const std::ifstream&>(std::move(std::ifstream(file, std::ifstream::in | std::ifstream::binary))))))),
                                                                                                                           std::istreambuf_iterator<char>())
                )))));

                return true;
            }
            catch (...)
            {
                std::throw_with_nested(std::runtime_error(std::string().append("Can't resize to ").append(std::to_string(GetFileSize(fs)).append(" bytes"))));
            }
        }
        return false;
    }

    static bool LoadSystemFile(const std::string& file, std::string& buffer)
    {
        return LoadSystemFile(file, buffer, std::filesystem::absolute(std::filesystem::path(file)));
    }

    static bool EnumFilesBasic(const std::filesystem::directory_entry& entry, const std::filesystem::directory_iterator& list, const std::regex& express, const InterfaceFiles& function)
    {
        if (entry.status().type() != std::filesystem::file_type::directory)
        {
            return false;
        }

        for (const std::filesystem::directory_entry& file : list)
        {
            if (nullptr != function)
            {
                try
                {
                    if (std::regex_match(file.path().string(), express))
                    {
                        if (function(file.path().string(),
                                     GetFileSize(file.path()),
                                     std::chrono::duration_cast<std::chrono::seconds>(std::filesystem::last_write_time(file.path().string()).time_since_epoch()) - std::chrono::duration_cast<std::chrono::seconds>(std::filesystem::file_time_type::clock::now().time_since_epoch() - std::chrono::system_clock::now().time_since_epoch())))
                        {
                            continue;
                        }
                        break;
                    }
                }
                catch (const std::regex_error& ex)
                {
                    printf("regex_error: %3d\t%s", ex.code(), ex.what());
                }
                catch (...)
                {
                    break;
                }
            }
        }

        return true;
    }

    static bool EnumFilesBasic(const std::filesystem::path& path, const std::regex& express, const InterfaceFiles& function)
    {
        try
        {
            return EnumFilesBasic(std::filesystem::directory_entry(path), std::filesystem::directory_iterator(path), express, function);
        }
        catch (const std::filesystem::filesystem_error& e)
        {
            printf("%s %d %s %s", e.what(), e.code().value(), e.path1().string().c_str(), e.path2().string().c_str());
        }
        catch (...)
        {

        }
        return false;
    }

    static bool EnumFiles(const std::string& path, const std::regex& express/* [.*\.\d+] or [(.*)\.(\d+)] */, const InterfaceFiles& function)
    {
        if (path.empty())
        {
            return false;
        }

        return EnumFilesBasic(std::filesystem::absolute(std::filesystem::path(path)), express, function);
    }

    static bool DeleteFiles(const std::filesystem::path& file)
    {
        if (file.empty())
        {
            return false;
        }

        if (ExistsFile(file))
        {
            return std::filesystem::remove(file);
        }

        return false;
    }

    static bool DeleteFiles(const std::string& file)
    {
        if (file.empty())
        {
            return false;
        }

        return DeleteFiles(std::filesystem::absolute(std::filesystem::path(file)));
    }

    static bool DeleteFiles(const std::string& file, const u64 file_date, const u64 date)
    {
        if (file.empty())
        {
            return false;
        }

        if (static_cast<u64>(file_date + date) <= ComplexUnixTimer())
        {
            return DeleteFiles(file);
        }

        return false;
    }

    static bool CreateDirectory(const std::string& path)
    {
        if (path.empty())
        {
            return false;
        }
        return std::filesystem::create_directory(std::filesystem::absolute(std::filesystem::path(path)));
    }

    static bool CreateDirectories(const std::string& path)
    {
        if (path.empty())
        {
            return false;
        }

        if (ExistsDirectory(path))
        {
            return true;
        }

        return std::filesystem::create_directories(std::filesystem::absolute(std::filesystem::path(path)));
    }

    static bool StringReplaceRegex(const std::string& src, std::string& buffer, const std::string& mask = "^\\s*|\\s*$", const std::string& fmt = std::string())
    {
        if (src.empty())
        {
            return false;
        }

        if (buffer.size())
        {
            buffer.clear();
            buffer.shrink_to_fit();
        }

        try
        {
            std::regex_replace(std::back_inserter(buffer), src.begin(), src.end(), std::regex(mask), fmt, std::regex_constants::match_default);
        }
        catch (const std::regex_error& ex)
        {
            printf("%s", ex.what()); return false;
        }

        return true;
    }

    static bool StringReplace(std::string& source, const std::string& delimiters, const std::string& dispose = "", const std::size_t offset = 1)
    {
        if (source.empty())
        {
            return false;
        }

        if (delimiters.empty())
        {
            return true;
        }

        for (std::string::size_type pos = source.find(delimiters); pos != std::string::npos; pos = source.find(delimiters))
        {
            if (source.replace(pos, offset, dispose).size())
            {
                continue;
            }
            return false;
        }

        return true;
    }

    static bool StringSplit(std::string& source, std::vector<std::string>& array, const std::string& delimiters = "")
    {
        if (StringReplace(source, delimiters, " ", 1))
        {
            array.swap(*const_cast<std::vector<std::string>*>(std::addressof(static_cast<const std::vector<std::string>&>(std::move(std::vector<std::string>
            {
                std::istream_iterator<std::string>(*const_cast<std::istringstream*>(std::addressof(static_cast<const std::istringstream&>(std::move(std::istringstream(source)))))),
                    std::istream_iterator<std::string>()
            })))));
            return true;
        }

        return false;
    }

    static bool BinaryToString(const std::string& data, std::string& buffer)
    {
        if (data.empty())
        {
            return false;
        }

        if (buffer.size())
        {
            buffer.clear();
            buffer.shrink_to_fit();
        }

        for (const unsigned char byte : data)
        {
            buffer += charhexset[byte >> 0x4];
            buffer += charhexset[byte & 0x0F];
        }

        return true;
    }

    static bool Hexadec2xdigit(const std::string& data, std::string& buffer, std::size_t offset)
    {
        if (data.empty())
        {
            return false;
        }

        for (std::size_t i = 0; i < data.size(); i += offset)
        {
            if (isxdigit(data[i]))
            {
                buffer += static_cast<char>(std::stoul(data.substr(i, offset), nullptr, 16));
            }
            else
            {
                buffer += 'X';
            }
        }

        return true;
    }

    static bool Hexadec2xdigitEx(const std::string& data, std::string& buffer, u32 checkxdigit = 0, u32 transform = 1)
    {
        if (data.empty())
        {
            return false;
        }

        std::string masks(data);
        {
            // 去掉 0x 去掉 空格
            if (StringReplace(masks, "0x") && StringReplace(masks, " "))
            {
                // 大小写转换
                if (masks.end() == (1 == transform ? std::transform(masks.begin(), masks.end(), masks.begin(), [] (unsigned char ch) { return toupper(ch); }) : std::transform(masks.begin(), masks.end(), masks.begin(), [] (unsigned char ch) { return tolower(ch); })))
                {
                    // 检查是否是完整的十六进制数
                    if (checkxdigit)
                    {
                        if (std::string::npos != masks.find_first_not_of(charhexset))
                        {
                            return false;
                        }
                    }

                    return Hexadec2xdigit(static_cast<const std::string&>(masks), buffer, 2);
                }
            }
        }

        return false;
    }

    static bool SearchPattern(const unsigned char* pos, const std::string& chars)
    {
        for (std::string::const_iterator xdigit = chars.cbegin(); xdigit != chars.cend(); ++xdigit, ++pos)
        {
            if (*pos != static_cast<const unsigned char>(*xdigit) &&     // no match
                'X' != static_cast<const unsigned char>(*xdigit))        // filter out arbitrary characters
            {
                return false;
            }
            else
            {
                // hit character
                continue;
            }
        }

        return true;
    }

    static bool SearchPattern(const void* start,                    // start address
                              const void* end,                      // end address
                              const std::string& keyword,           // characteristic code
                              std::size_t index,                    // take out the serial number
                              std::size_t offset,
                              void*& address)                       // return to address
    {
        if (keyword.empty())
        {
            return true;
        }

        if (start != end && static_cast<const unsigned char*>(end) > static_cast<const unsigned char*>(start) && static_cast<std::size_t>(static_cast<const unsigned char*>(end) - static_cast<const unsigned char*>(start)) > keyword.size())
        {
            std::string chars;
            {
                if (Hexadec2xdigitEx(keyword, chars, 0))
                {
                    for (auto [pos, i] = std::make_tuple(static_cast<const unsigned char*>(start), static_cast<std::size_t>(0)); pos <= end; ++pos)
                    {
                        if (SearchPattern(pos, chars))
                        {
                            if (++i != index)
                            {
                                continue;
                            }
                            else
                            {
                                address = const_cast<void*>(reinterpret_cast<const void*>(pos + offset));
                            }

                            return false;
                        }
                    }
                }
            }
        }

        return true;
    }

    static bool SearchPattern(const u96 start, const u96 end, const std::string& keyword, std::size_t index, std::size_t offset, void*& address)
    {
        return SearchPattern(reinterpret_cast<const void*>(start), reinterpret_cast<const void*>(end), keyword, index, offset, address);
    }

    //static bool SearchPatternEx(const void* start, const void* end, const std::string& chars, std::size_t index, std::size_t offset, void*& address, std::size_t count)
    //{
    //    for (auto [masks, i, n, pos] = std::make_tuple(std::array<std::size_t, 32>{}, static_cast<std::size_t>(0), static_cast<std::size_t>(0), static_cast<const unsigned char*>(start)); i < count; ++i)
    //    {
    //        for (std::size_t j = 0; j < 16 && n < chars.size(); ++j, ++n)
    //        {
    //            if ('X' != static_cast<const char*>(chars.c_str() + i * 16)[j])
    //            {
    //                masks[i] |= static_cast<std::size_t>(1) << j;
    //            }
    //        }

    //        for (auto [store, j] = std::make_tuple(_mm_loadu_si128(reinterpret_cast<const __m128i *>(chars.c_str() + i * 16)), static_cast<std::size_t>(0)); pos <= end; _mm_prefetch(reinterpret_cast<const char*>(++pos + 64), _MM_HINT_NTA))
    //        {
    //            if (static_cast<std::size_t>(static_cast<std::size_t>(_mm_movemask_epi8(_mm_cmpeq_epi8(_mm_loadu_si128(reinterpret_cast<const __m128i *>(pos + i * 16)), store))) & masks[i]) == masks[i])
    //            {
    //                if (n < chars.size())
    //                {
    //                    break;
    //                }

    //                if (++j != index)
    //                {
    //                    continue;
    //                }
    //                else
    //                {
    //                    address = const_cast<void*>(reinterpret_cast<const void*>(pos + offset));
    //                }

    //                return true;
    //            }
    //        }
    //    }

    //    return false;
    //}

    //static bool SearchPatternEx(const void* start, const void* end, const std::string& keyword, std::size_t index, std::size_t offset, void*& address)
    //{
    //    if (keyword.empty())
    //    {
    //        return false;
    //    }

    //    if (start != end && static_cast<const unsigned char*>(end) > static_cast<const unsigned char*>(start) && static_cast<std::size_t>(static_cast<const unsigned char*>(end) - static_cast<const unsigned char*>(start)) > keyword.size())
    //    {
    //        std::string chars;
    //        {
    //            if (Hexadec2xdigitEx(keyword, chars, 0))
    //            {
    //                return SearchPatternEx(start, end, chars, index, offset, address, static_cast<std::size_t>((((chars.size()) + (16 - 1)) & ~(16 - 1)) >> 4));
    //            }
    //        }
    //    }

    //    return false;
    //}

    //static bool SearchPatternEx(const u96 start, const u96 end, const std::string& keyword, std::size_t index, std::size_t offset, void*& address)
    //{
    //    return SearchPatternEx(reinterpret_cast<const void*>(start), reinterpret_cast<const void*>(end), keyword, index, offset, address);
    //}

    template<typename R>
    bool SearchPatternEx(const void* start, const void* end, const std::string& chars, std::size_t index, std::size_t offset, R*& address, std::size_t count)
    {
        for (auto [masks, i, n, pos] = std::make_tuple(std::array<std::size_t, 32>{}, static_cast<std::size_t>(0), static_cast<std::size_t>(0), static_cast<const unsigned char*>(start)); i < count; ++i)
        {
            for (std::size_t j = 0; j < 16 && n < chars.size(); ++j, ++n)
            {
                if ('X' != static_cast<const char*>(chars.c_str() + i * 16)[j])
                {
                    masks[i] |= static_cast<std::size_t>(1) << j;
                }
            }

            for (auto [store, j] = std::make_tuple(_mm_loadu_si128(reinterpret_cast<const __m128i *>(chars.c_str() + i * 16)), static_cast<std::size_t>(0)); pos <= end; _mm_prefetch(reinterpret_cast<const char*>(++pos + 64), _MM_HINT_NTA))
            {
                if (static_cast<std::size_t>(static_cast<std::size_t>(_mm_movemask_epi8(_mm_cmpeq_epi8(_mm_loadu_si128(reinterpret_cast<const __m128i *>(pos + i * 16)), store))) & masks[i]) == masks[i])
                {
                    if (n < chars.size())
                    {
                        break;
                    }

                    if (++j != index)
                    {
                        continue;
                    }

                    __try
                    {
                        address = reinterpret_cast<R*>(*reinterpret_cast<unsigned char**>(const_cast<unsigned char*>(pos + offset)));
                    }
                    __except (ExceptionFilter(GetExceptionInformation()))
                    {
                        return true;
                    }

                    return false;
                }
            }
        }

        return true;
    }

    template<typename R>
    bool SearchPatternEx(const void* start, const void* end, const std::string& keyword, std::size_t index, std::size_t offset, R*& address)
    {
        if (keyword.empty())
        {
            return true;
        }

        if (start != end && static_cast<const unsigned char*>(end) > static_cast<const unsigned char*>(start) && static_cast<std::size_t>(static_cast<const unsigned char*>(end) - static_cast<const unsigned char*>(start)) > keyword.size())
        {
            std::string chars;
            {
                if (Hexadec2xdigitEx(keyword, chars, 0))
                {
                    return SearchPatternEx(start, end, chars, index, offset, address, static_cast<std::size_t>((((chars.size()) + (16 - 1)) & ~(16 - 1)) >> 4));
                }
            }
        }

        return true;
    }

    template<typename R>
    bool SearchPatternEx(const u96 start, const u96 end, const std::string& keyword, std::size_t index, std::size_t offset, R*& address)
    {
        return SearchPatternEx(reinterpret_cast<const void*>(start), reinterpret_cast<const void*>(end), keyword, index, offset, address);
    }

    template<class Fun, class... Args>
    constexpr auto wrap_call(Fun&& f, Args&&... args)
        noexcept(std::forward<Fun>(f)(std::forward<Args>(args)...))->decltype(std::forward<Fun>(f)(std::forward<Args>(args)...))
    {
        return std::forward<Fun>(f)(std::forward<Args>(args)...);
    }

    template<typename R, typename Fun, typename... Args>
    constexpr auto wrap_call_ex(Fun&& f, Args&&... args)
    {
        return std::invoke(reinterpret_cast<R(__stdcall*)(Args ...)>(typename::std::forward<Fun>(f)), typename::std::forward<Args>(args)...);
    }
}

#endif // __CHEAT_UTILS_H__