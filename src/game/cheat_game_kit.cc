#include <game/cheat_game_kit.h>
#include <details/cheat_utils.h>
#include <details/cheat_xorstr.h>
namespace Cheat
{
    CheatGameKit::CheatGameKit()
        : cheat_game(SearchPatternEx(0x00546000, 0x006F0000, XORSTRING("BB ?? ?? ?? ?? 8B C3 33 C9 BA ?? ?? ?? ?? E8"), 1, 1, cheat_game_kit))
    {
        
    }

    CheatGameKit::~CheatGameKit()
    {

    }

    const char* CheatGameKit::GameDir()
    {
        if (cheat_game && nullptr != cheat_game_kit)
        {
            return wrap_call_ex<const char*>(cheat_game_kit->Game.ClientPath);
        }

        return nullptr;
    }

    const char* CheatGameKit::GameUserName(u32 actor)
    {
        if (cheat_game && nullptr != cheat_game_kit)
        {
            return wrap_call_ex<const char*>(cheat_game_kit->Actor.sUserName, actor);
        }

        return nullptr;
    }

    const char* CheatGameKit::GameUserDesc(u32 actor)
    {
        if (nullptr == cheat_game_kit)
        {
            return nullptr;
        }

        return wrap_call_ex<const char*>(cheat_game_kit->Actor.sDescUserName, actor);
    }

    const void* CheatGameKit::GameUserSelf()
    {
        if (cheat_game && nullptr != cheat_game_kit)
        {
            return wrap_call_ex<const void*>(cheat_game_kit->Game.MySelf);
        }

        return nullptr;
    }

    u32 CheatGameKit::GameUserMark(u32 actor)
    {
        if (cheat_game && nullptr != cheat_game_kit)
        {
            return wrap_call_ex<u32>(cheat_game_kit->Actor.nRecogId, actor);
        }

        return 0;
    }

    const char* CheatGameKit::GameMapTitle()
    {
        if (cheat_game && nullptr != cheat_game_kit)
        {
            return wrap_call_ex<const char*>(cheat_game_kit->Game.MapTitle);
        }

        return nullptr;
    }

    const void* CheatGameKit::GameUserPack()
    {
        if (cheat_game && nullptr != cheat_game_kit)
        {
            return wrap_call_ex<const void*>(cheat_game_kit->Game.ItemBag);
        }

        return nullptr;
    }

    const void* CheatGameKit::GameUserItem()
    {
        if (cheat_game && nullptr != cheat_game_kit)
        {
            return wrap_call_ex<const void*>(cheat_game_kit->Game.UseItems);
        }

        return nullptr;
    }

    void CheatGameKit::GameSendChatBoard(const char* msg, unsigned char text_color, unsigned char background_color)
    {
        if (cheat_game && nullptr != cheat_game_kit)
        {
            return wrap_call_ex(cheat_game_kit->Game.AddChatBoardString, msg, text_color, background_color);
        }

        return;
    }

    const void* CheatGameKit::GameFindActor(u32 idx)
    {
        if (cheat_game && nullptr != cheat_game_kit)
        {
            return wrap_call_ex<const void*>(cheat_game_kit->Game.FindActor1, idx);
        }

        return nullptr;
    }

    const void* CheatGameKit::GameFindActor(const char* name)
    {
        if (cheat_game && nullptr != cheat_game_kit)
        {
            return wrap_call_ex<const void*>(cheat_game_kit->Game.FindActor2, name);
        }

        return nullptr;
    }
}