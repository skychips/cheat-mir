#ifndef __CHEAT_GAME_KIT_H__
#define __CHEAT_GAME_KIT_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_platform.h>
#include <game/cheat_game_struct.h>

namespace Cheat
{

    class CheatGameKit
    {
    public:
        explicit CheatGameKit();
        virtual ~CheatGameKit();
    public:
        /* 游戏目录*/
        const char* GameDir();
        /* 玩家昵称 */
        const char* GameUserName(u32 actor);
        /* 玩家称号*/
        const char* GameUserDesc(u32 actor);
        /* 自己指针 */
        const void* GameUserSelf();
        /* 玩家序号 */
        u32         GameUserMark(u32 actor);
        /* 背包基址 */
        const void* GameUserPack();
        /* 装备基址 */
        const void* GameUserItem();

        /* 地图名称 */
        const char* GameMapTitle();
    public:
        /* 添加聊天信息 */
        void GameSendChatBoard(const char* msg, unsigned char text_color, unsigned char background_color);
    public:
        /* 查找玩家基址 */
        const void* GameFindActor(u32 idx);
        const void* GameFindActor(const char* name);
    private:
        std::atomic<u32>                                cheat_game;
        struct IGClient*                                cheat_game_kit;
    };
}

#endif // __CHEAT_GAME_KIT_H__