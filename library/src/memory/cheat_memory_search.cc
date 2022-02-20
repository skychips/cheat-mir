#include <memory/cheat_memory_search.h>


namespace Mir
{
    CheatMemorySearch::CheatMemorySearch()
    {

    }

    CheatMemorySearch::~CheatMemorySearch()
    {

    }

    static constexpr char charhexset[] = "0123456789ABCDEFabcdef";

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

    static bool StringReplace(const std::string& source, std::string& dest, const std::string& delimiters, const std::string& dispose = "", const std::size_t offset = 1)
    {
        if (source.empty())
        {
            return false;
        }

        if (delimiters.empty())
        {
            return true;
        }

        if (dest.empty())
        {
            dest = source;
        }

        for (std::string::size_type pos = dest.find(delimiters); pos != std::string::npos; pos = dest.find(delimiters))
        {
            if (dest.replace(pos, offset, dispose).size())
            {
                continue;
            }
            return false;
        }

        return true;
    }

    static bool StringToBinary(const std::string& data, std::string& buffer, const std::size_t offset)
    {
        if (data.empty())
        {
            return false;
        }

        for (std::size_t i = 0; i < data.size(); i += offset)
        {
            if (std::isxdigit(data[i]))
            {
                try
                {
                    buffer += static_cast<char>(std::stoul(data.substr(i, offset), nullptr, 16));
                }
                catch (std::invalid_argument e)
                {
                    buffer += 'X';
                }
            }
            else
            {
                buffer += 'X';
            }
        }

        return true;
    }

    bool CheatMemorySearch::SearchPattern(const unsigned char* pos, const std::string& chars)
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

    bool CheatMemorySearch::SearchPattern(const void* start,                    // start address
                                          const void* end,                      // end address
                                          const std::string& keyword,           // characteristic code
                                          std::size_t index,                    // take out the serial number
                                          void*& address)                       // return to address
    {
        if (keyword.empty())
        {
            return false;
        }

        if (start != end && static_cast<const unsigned char*>(end) > static_cast<const unsigned char*>(start) && static_cast<std::size_t>(static_cast<const unsigned char*>(end) - static_cast<const unsigned char*>(start)) > keyword.size())
        {
            std::string masks, chars;
            {
                if (StringReplace(keyword, masks, " ") && StringToBinary(masks, chars, 2))
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
                                address = const_cast<void*>(reinterpret_cast<const void*>(pos));
                            }

                            return true;
                        }
                    }
                }
            }
        }

        return false;
    }

    bool CheatMemorySearch::SearchPatternEx(const void* start, const void* end, const std::string& keyword, std::size_t index, void*& address)
    {
        if (keyword.empty())
        {
            return false;
        }

        if (start != end && static_cast<const unsigned char*>(end) > static_cast<const unsigned char*>(start) && static_cast<std::size_t>(static_cast<const unsigned char*>(end) - static_cast<const unsigned char*>(start)) > keyword.size())
        {
            std::string masks, chars;
            {
                if (StringReplace(keyword, masks, " ") && StringToBinary(masks, chars, 2))
                {
                    return SearchPatternEx(start, end, chars, index, static_cast<std::size_t>((((chars.size()) + (16 - 1)) & ~(16 - 1)) >> 4), address);
                }
            }
        }

        return false;
    }

    bool CheatMemorySearch::SearchPatternEx(const void* start, const void* end, const std::string& chars, std::size_t index, std::size_t count, void*& address)
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
                    else
                    {
                        address = const_cast<void*>(reinterpret_cast<const void*>(pos));
                    }

                    return true;
                }
            }
        }

        return false;
    }
}