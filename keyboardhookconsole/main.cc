﻿#include <iostream>
#include <windows.h>
#include <regex>

unsigned char hex[] = { 0xE9, 0x3B, 0x9A, 0x0A, 0x00, 0xE9, 0x96, 0xBC, 0x05, 0x00, 0xE9, 0xA1, 0x56, 0x07, 0x00, 0xE9, 0x2C, 0x3A, 0x05, 0x00, 0xE9, 0xB7, 0x57, 0x07, 0x00, 0xE9, 0x72, 0x77, 0x04, 0x00, 0xE9, 0xDD, 0xAD, 0x08, 0x00, 0xE9, 0xF8, 0xDF, 0x06, 0x00, 0xE9, 0xE3, 0xBB, 0x01, 0x00, 0xE9, 0x4E, 0xDC, 0x03, 0x00, 0xE9, 0x49, 0xD6, 0x03, 0x00, 0xE9, 0xE4, 0x3F, 0x03, 0x00, 0xE9, 0x8F, 0x7C, 0x01, 0x00, 0xE9, 0xFA, 0xCD, 0x08, 0x00, 0xE9, 0x05, 0xEA, 0x05, 0x00, 0xE9, 0xA0, 0xB3, 0x03, 0x00, 0xE9, 0x9B, 0xEC, 0x04, 0x00, 0xE9, 0x16, 0x2E, 0x05, 0x00, 0xE9, 0xA1, 0x33, 0x0C, 0x00, 0xE9, 0x1C, 0xB0, 0x0C, 0x00, 0xE9, 0xE7, 0x08, 0x04, 0x00, 0xE9, 0xB2, 0xC4, 0x05, 0x00, 0xE9, 0xED, 0x66, 0x02, 0x00, 0xE9, 0x48, 0xCC, 0x09, 0x00, 0xE9, 0xC3, 0xB8, 0x03, 0x00, 0xE9, 0x8E, 0xE6, 0x02, 0x00, 0xE9, 0x49, 0x15, 0x0D, 0x00, 0xE9, 0x04, 0x0D, 0x06, 0x00, 0xE9, 0xBF, 0x9C, 0x02, 0x00, 0xE9, 0xDA, 0xD1, 0x07, 0x00, 0xE9, 0x85, 0x3F, 0x0A, 0x00, 0xE9, 0xA0, 0x66, 0x06, 0x00, 0xE9, 0x2B, 0x40, 0x05, 0x00, 0xE9, 0x26, 0xC4, 0x06, 0x00, 0xE9, 0x41, 0x5C, 0x07, 0x00, 0xE9, 0x9C, 0xE7, 0x08, 0x00, 0xE9, 0x67, 0xBF, 0x06, 0x00, 0xE9, 0x92, 0x95, 0x02, 0x00, 0xE9, 0x6D, 0x8A, 0x02, 0x00, 0xE9, 0xC8, 0x5E, 0x07, 0x00, 0xE9, 0x03, 0x01, 0x08, 0x00, 0xE9, 0x8E, 0x0F, 0x02, 0x00, 0xE9, 0xF9, 0xF4, 0x08, 0x00, 0xE9, 0xF4, 0xEA, 0x07, 0x00, 0xE9, 0x4F, 0x88, 0x02, 0x00, 0xE9, 0x2A, 0xDB, 0x07, 0x00, 0xE9, 0x55, 0x88, 0x02, 0x00, 0xE9, 0x40, 0x0E, 0x0A, 0x00, 0xE9, 0x4B, 0x64, 0x06, 0x00, 0xE9, 0xB6, 0x92, 0x02, 0x00, 0xE9, 0x81, 0x05, 0x05, 0x00, 0xE9, 0x1C, 0x32, 0x05, 0x00, 0xE9, 0x67, 0x95, 0x02, 0x00, 0xE9, 0xD2, 0x60, 0x0C, 0x00, 0xE9, 0x2D, 0x42, 0x05, 0x00, 0xE9, 0xA8, 0x36, 0x02, 0x00, 0xE9, 0xC3, 0x8B, 0x03, 0x00, 0xE9, 0x5E, 0x01, 0x0A, 0x00, 0xE9, 0xB9, 0x4A, 0x02, 0x00, 0xE9, 0xB4, 0x22, 0x0A, 0x00, 0xE9, 0xFF, 0x75, 0x04, 0x00, 0xE9, 0x2A, 0xEB, 0x07, 0x00, 0xE9, 0x95, 0x30, 0x0C, 0x00, 0xE9, 0xC0, 0x50, 0x06, 0x00, 0xE9, 0x6B, 0xAD, 0x02, 0x00, 0xE9, 0x06, 0x5B, 0x07, 0x00, 0xE9, 0x21, 0x14, 0x0D, 0x00, 0xE9, 0x6C, 0x9C, 0x03, 0x00, 0xE9, 0x57, 0x01, 0x0A, 0x00, 0xE9, 0x92, 0x60, 0x0B, 0x00, 0xE9, 0x6D, 0xA5, 0x00, 0x00, 0xE9, 0x28, 0xE8, 0x08, 0x00, 0xE9, 0x03, 0xAC, 0x02, 0x00, 0xE9, 0xAE, 0x3F, 0x06, 0x00, 0xE9, 0x69, 0x3F, 0x06, 0x00, 0xE9, 0x14, 0x57, 0x06, 0x00, 0xE9, 0x2F, 0xB3, 0x02, 0x00, 0xE9, 0xBA, 0x71, 0x0B, 0x00, 0xE9, 0x55, 0xB4, 0x06, 0x00, 0xE9, 0x80, 0x7F, 0x0B, 0x00, 0xE9, 0x1B, 0xA9, 0x06, 0x00, 0xE9, 0xE6, 0x08, 0x0C, 0x00, 0xE9, 0x21, 0x9E, 0x02, 0x00, 0xE9, 0xAC, 0x04, 0x05, 0x00, 0xE9, 0xA7, 0x61, 0x0B, 0x00, 0xE9, 0x22, 0x26, 0x08, 0x00, 0xE9, 0xCD, 0x3C, 0x05, 0x00, 0xE9, 0xF8, 0xE6, 0x07, 0x00, 0xE9, 0x73, 0xD4, 0x03, 0x00, 0xE9, 0x1E, 0x79, 0x0B, 0x00, 0xE9, 0x99, 0x32, 0x08, 0x00, 0xE9, 0x24, 0xCC, 0x0B, 0x00, 0xE9, 0x3F, 0x5D, 0x04, 0x00, 0xE9, 0xDA, 0x17, 0x03, 0x00, 0xE9, 0x55, 0xE2, 0x02, 0x00, 0xE9, 0x70, 0xE2, 0x08, 0x00, 0xE9, 0xAB, 0xB1, 0x02, 0x00, 0xE9, 0xD6, 0xB5, 0x03, 0x00, 0xE9, 0x21, 0x95, 0x0A, 0x00, 0xE9, 0x6C, 0x92, 0x0C, 0x00, 0xE9, 0x17, 0x94, 0x03, 0x00, 0xE9, 0x12, 0xAE, 0x0A, 0x00, 0xE9, 0xED, 0x9D, 0x00, 0x00, 0xE9, 0xD8, 0x5C, 0x04, 0x00, 0xE9, 0xB3, 0x47, 0x08, 0x00, 0xE9, 0x2E, 0x01, 0x03, 0x00, 0xE9, 0xC9, 0xFE, 0x01, 0x00, 0xE9, 0x44, 0x0A, 0x06, 0x00, 0xE9, 0x8F, 0xD7, 0x07, 0x00, 0xE9, 0xBA, 0x5F, 0x01, 0x00, 0xE9, 0x15, 0x16, 0x01, 0x00, 0xE9, 0x20, 0x04, 0x0A, 0x00, 0xE9, 0xDB, 0x70, 0x04, 0x00, 0xE9, 0xE6, 0x5B, 0x04, 0x00, 0xE9, 0xF1, 0xBC, 0x06, 0x00, 0xE9, 0x0C, 0x93, 0x03, 0x00, 0xE9, 0x97, 0x02, 0x0D, 0x00, 0xE9, 0x02, 0x88, 0x02, 0x00, 0xE9, 0x3D, 0x2D, 0x05, 0x00, 0xE9, 0x18, 0xD2, 0x07, 0x00, 0xE9, 0x63, 0x0E, 0x01, 0x00, 0xE9, 0xCE, 0xC6, 0x04, 0x00, 0xE9, 0x99, 0x4D, 0x06, 0x00, 0xE9, 0xD4, 0x47, 0x09, 0x00, 0xE9, 0x7F, 0x60, 0x06, 0x00, 0xE9, 0xAA, 0x3D, 0x06, 0x00, 0xE9, 0x15, 0x5A, 0x03, 0x00, 0xE9, 0xC0, 0x07, 0x04, 0x00, 0xE9, 0x7B, 0x1C, 0x04, 0x00, 0xE9, 0xB6, 0x02, 0x06, 0x00, 0xE9, 0xC1, 0xFB, 0x07, 0x00, 0xE9, 0x7C, 0x72, 0x0D, 0x00, 0xE9, 0x87, 0xA9, 0x02, 0x00, 0xE9, 0x02, 0x50, 0x0D, 0x00, 0xE9, 0x7D, 0xAB, 0x06, 0x00, 0xE9, 0xD8, 0xAB, 0x06, 0x00, 0xE9, 0xC3, 0x6F, 0x07, 0x00, 0xE9, 0xBE, 0x46, 0x08, 0x00, 0xE9, 0x39, 0x20, 0x06, 0x00, 0xE9, 0x64, 0x66, 0x0C, 0x00, 0xE9, 0xEF, 0x7B, 0x09, 0x00, 0xE9, 0x8A, 0x6E, 0x0A, 0x00, 0xE9, 0x15, 0xD9, 0x0A, 0x00, 0xE9, 0x60, 0x61, 0x06, 0x00, 0xE9, 0x9B, 0xC1, 0x03, 0x00, 0xE9, 0xC6, 0x3D, 0x05, 0x00, 0xE9, 0x31, 0x36, 0x02, 0x00, 0xE9, 0xCC, 0x01, 0x0C, 0x00, 0xE9, 0x57, 0x06, 0x0C, 0x00, 0xE9, 0xA2, 0xD2, 0x03, 0x00, 0xE9, 0x3D, 0xEE, 0x07, 0x00, 0xE9, 0xB8, 0xB3, 0x06, 0x00, 0xE9, 0x53, 0x0B, 0x05, 0x00, 0xE9, 0x2E, 0xBD, 0x00, 0x00, 0xE9, 0x69, 0xD6, 0x04, 0x00, 0xE9, 0xE4, 0xD0, 0x04, 0x00, 0xE9, 0x9F, 0x4B, 0x04, 0x00, 0xE9, 0x8A, 0x17, 0x06, 0x00, 0xE9, 0xA5, 0x3C, 0x05, 0x00, 0xE9, 0xB0, 0x19, 0x05, 0x00, 0xE9, 0x9B, 0x6F, 0x06, 0x00, 0xE9, 0x86, 0x60, 0x02, 0x00, 0xE9, 0x11, 0x4A, 0x08, 0x00, 0xE9, 0xEC, 0x8E, 0x05, 0x00, 0xE9, 0xE7, 0xCB, 0x07, 0x00, 0xE9, 0xE2, 0xD4, 0x03, 0x00, 0xE9, 0x9D, 0x9F, 0x03, 0x00, 0xE9, 0xE8, 0x8F, 0x03, 0x00, 0xE9, 0x13, 0xD5, 0x03, 0x00, 0xE9, 0x2E, 0x5C, 0x0B, 0x00, 0xE9, 0xF9, 0x47, 0x02, 0x00, 0xE9, 0xE4, 0x5D, 0x0D, 0x00, 0xE9, 0x1F, 0x3E, 0x08, 0x00, 0xE9, 0xCA, 0x66, 0x09, 0x00, 0xE9, 0x65, 0x5A, 0x0B, 0x00, 0xE9, 0x50, 0xF8, 0x09, 0x00, 0xE9, 0x5B, 0xA2, 0x01, 0x00, 0xE9, 0x26, 0x56, 0x02, 0x00, 0xE9, 0xD1, 0x8C, 0x0D, 0x00, 0xE9, 0x5C, 0x5B, 0x0D, 0x00, 0xE9, 0x77, 0x7B, 0x0B, 0x00, 0xE9, 0xE2, 0xE9, 0x04, 0x00, 0xE9, 0x0D, 0x0B, 0x03, 0x00, 0xE9, 0xF8, 0x62, 0x02, 0x00, 0xE9, 0x13, 0xC2, 0x04, 0x00, 0xE9, 0xEE, 0x27, 0x03, 0x00, 0xE9, 0xB9, 0x27, 0x04, 0x00, 0xE9, 0xB4, 0x3D, 0x05, 0x00, 0xE9, 0x1F, 0x7B, 0x09, 0x00, 0xE9, 0x6A, 0xFF, 0x05, 0x00, 0xE9, 0x95, 0xAB, 0x02, 0x00, 0xE9, 0x50, 0x66, 0x0B, 0x00, 0xE9, 0xCB, 0x59, 0x04, 0x00, 0xE9, 0xD6, 0x90, 0x03, 0x00, 0xE9, 0x01, 0x18, 0x02, 0x00, 0xE9, 0x4C, 0xB0, 0x01, 0x00, 0xE9, 0x47, 0x3B, 0x06, 0x00, 0xE9, 0xD2, 0x98, 0x03, 0x00, 0xE9, 0x8D, 0x0E, 0x08, 0x00, 0xE9, 0x58, 0x33, 0x0A, 0x00, 0xE9, 0xC3, 0x2B, 0x05, 0x00, 0xE9, 0xBE, 0x4F, 0x09, 0x00, 0xE9, 0xE9, 0x86, 0x03, 0x00, 0xE9, 0x34, 0x3E, 0x09, 0x00, 0xE9, 0xFF, 0x84, 0x03, 0x00, 0xE9, 0x9A, 0xF6, 0x0A, 0x00, 0xE9, 0xF5, 0x2B, 0x06, 0x00, 0xE9, 0x50, 0x5F, 0x0A, 0x00, 0xE9, 0xEB, 0x5E, 0x0A, 0x00, 0xE9, 0xF6, 0xDF, 0x08, 0x00, 0xE9, 0xA1, 0xD3, 0x03, 0x00, 0xE9, 0xBC, 0x55, 0x0B, 0x00, 0xE9, 0x07, 0x56, 0x06, 0x00, 0xE9, 0x42, 0xA7, 0x06, 0x00, 0xE9, 0xCD, 0x3B, 0x05, 0x00, 0xE9, 0x18, 0xD3, 0x03, 0x00, 0xE9, 0x53, 0x1E, 0x03, 0x00, 0xE9, 0xCE, 0x98, 0x0B, 0x00, 0xE9, 0x89, 0x1D, 0x03, 0x00, 0xE9, 0xE4, 0x73, 0x0C, 0x00, 0xE9, 0xAF, 0x1F, 0x08, 0x00, 0xE9, 0x7A, 0x6E, 0x04, 0x00, 0xE9, 0xE5, 0xC1, 0x03, 0x00, 0xE9, 0x30, 0xE4, 0x07, 0x00, 0xE9, 0x8B, 0x98, 0x0B, 0x00, 0xE9, 0x66, 0x9D, 0x03, 0x00, 0xE9, 0x31, 0x1E, 0x0C, 0x00, 0xE9, 0x0C, 0xCD, 0x09, 0x00, 0xE9, 0x27, 0x7E, 0x04, 0x00, 0xE9, 0xA2, 0x36, 0x09, 0x00, 0xE9, 0xCD, 0x51, 0x09, 0x00, 0xE9, 0xB8, 0x13, 0x06, 0x00, 0xE9, 0x43, 0x07, 0x05, 0x00, 0xE9, 0xAE, 0x39, 0x06, 0x00, 0xE9, 0x69, 0x20, 0x0B, 0x00, 0xE9, 0x34, 0xF0, 0x08, 0x00, 0xE9, 0xBF, 0xA6, 0x02, 0x00, 0xE9, 0x1A, 0x36, 0x0A, 0x00, 0xE9, 0x95, 0xA9, 0x02, 0x00, 0xE9, 0x90, 0x3C, 0x06, 0x00, 0xE9, 0x1B, 0xD0, 0x03, 0x00, 0xE9, 0x06, 0x58, 0x0B, 0x00, 0xE9, 0x71, 0x75, 0x04, 0x00, 0xE9, 0x3C, 0x9A, 0x02, 0x00, 0xE9, 0x27, 0x54, 0x07, 0x00, 0xE9, 0xA2, 0xE5, 0x07, 0x00, 0xE9, 0x0D, 0xE7, 0x0C, 0x00, 0xE9, 0x28, 0x2A, 0x08, 0x00, 0xE9, 0x33, 0x5A, 0x02, 0x00, 0xE9, 0x9E, 0xD5, 0x03, 0x00, 0xE9, 0x29, 0x55, 0x07, 0x00, 0xE9, 0xE4, 0xE1, 0x07, 0x00, 0xE9, 0x0F, 0xDD, 0x07, 0x00, 0xE9, 0x6A, 0xDE, 0x07, 0x00, 0xE9, 0xF5, 0x73, 0x0D, 0x00, 0xE9, 0xF0, 0xC6, 0x04, 0x00, 0xE9, 0xFB, 0xD4, 0x0A, 0x00, 0xE9, 0x26, 0xE9, 0x02, 0x00, 0xE9, 0x41, 0x30, 0x05, 0x00 };

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

static bool StringToBinary(const std::string& data, std::string& buffer, const std::size_t offset)
{
    if (data.empty())
    {
        return false;
    }

    for (std::size_t i = 0; i < data.size(); i += offset)
    {
        if (data[i] >= '0' && data[i] <= '9' ||
            data[i] >= 'A' && data[i] <= 'F' ||
            data[i] >= 'a' && data[i] <= 'f')
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

bool SearchPattern(const unsigned char* pos, const std::string& binary)
{
    for (const unsigned char* chars = reinterpret_cast<const unsigned char*>(binary.data()); chars <= reinterpret_cast<const unsigned char*>(binary.data()) + binary.size(); ++chars, ++pos)
    {
        if (*pos != *chars && 'X' != *chars)
        {
            return false;
        }
        else
        {
            continue;
        }
    }

    return true;
}

bool SearchPattern(const unsigned char* start,        // 起始地址
                   const unsigned char* end,          // 结束地址
                   std::string& pattern,              // 特征字符
                   std::size_t index)                 // 特征序号
{
    std::string binary;
    {
        if (StringReplace(pattern, " ") && StringToBinary(pattern, binary, 2))
        {
            for (auto [pos, i] = std::make_tuple(static_cast<const unsigned char*>(start), static_cast<std::size_t>(0)); pos <= end; ++pos)
            {
                if (SearchPattern(pos, binary) && ++i == index)
                {
                    printf("内存地址：%p\n", pos);
                    return true;
                }
            }
        }
    }
    return false;
}

int main1123()
{
    // 0x04, 0x00, 0xE9, 0xFB, 0xD4, 0x0A
    std::string string_hex = "04 00 E9 ?? ?? 0A";
    SearchPattern(hex, hex + sizeof(hex), string_hex, 1);

    UINT WM_PROCESS_EVENT_FILTER = RegisterWindowMessage("ProcessEventFilter");
    HHOOK m_Hook = NULL;
    HWND GamehWnd = 0;
    for (;;)
    {
        GamehWnd = ::FindWindow(0, "Legend of Mir2");
        Sleep(100);
        if (GamehWnd)
        {
            break;
        }
    }

    if (GamehWnd)
    {
        DWORD fProcessId = 0;

        DWORD fThreadProcessId = GetWindowThreadProcessId(GamehWnd, &fProcessId);

        HINSTANCE hInst = LoadLibrary("./library.dll");
        if (hInst)
        {
            HOOKPROC lpfn = (HOOKPROC)GetProcAddress(hInst, "interfaces");
            if (lpfn)
            {
                m_Hook = SetWindowsHookEx(WH_GETMESSAGE, lpfn, hInst, fThreadProcessId);

                FreeLibrary(hInst);
            }
        }

        getchar();

        if (!UnhookWindowsHookEx(m_Hook))
        {
            printf("卸载HOOK失败\n");
            getchar();
        }
        getchar();

    }
    return 0;
}