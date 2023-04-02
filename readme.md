## 最完善的 iOS 翻墙规则


本人接上更新

------------------------------------------------------

这里是一系列好用的翻墙规则，针对  开发，支持广告过滤。规则定义了哪些网站可以直连，哪些必须走代理，规则是一个纯文本文件，无法提供翻墙功能。使用 Python 按照一定的规则和模板定期自动生成，并且使用开源的力量，集众人之力逐渐完善。

**正在使用手机浏览本页面的用户 [请点击这里](https://github.com/lhzptg/Shadowrocket-ADBlock-Rules/blob/master/readme.md)，查看完整的说明文档。**

**本规则具有以下特点：**

- 黑名单由最新版 GFWList 自动转换；白名单针对全球 top500 站点的连通情况定期自动生成。
- 自动转换最新版本的 `EasyList, Eaylist China, 乘风规则` 为 SR 规则，全面去除广告且去除重复。
- 也包括自定义的广告过滤规则，针对 iOS 端的网页广告、App 广告和视频广告。（[常见广告过滤效果统计](https://github.com/lhzltg/Shadowrocket-ADBlock-Rules/issues/40)）
- 提供多个规则文件让大家自由选择或者自由切换使用。
- 专门针对 ShadowRocket 开发，可以保证与 SR 的兼容性。


## 规则列表


| 规则                        | 规定代理的网站        | 规定直连的网站               |
|---------------------------|----------------|-----------------------|
| [黑名单规则 + 去广告](#黑名单过滤--广告) | 被墙的网站（GFWList） | 正常的网站                 |
| [黑名单规则](#黑名单过滤)           |                |                       |
| [白名单规则 + 去广告](#白名单过滤--广告) | 其他网站           | top500 网站中可直连的网站、中国网站 |
| [白名单规则](#白名单过滤)           |                |                       |
| [国内外划分 + 去广告](#国内外划分--广告) | 国外网站           | 中国网站                  |
| [国内外划分](#国内外划分)           |                |                       |
| [全局直连 + 去广告](#直连去广告)      | /              | 全部                    |
| [全局代理 + 去广告](#代理去广告)      | 全部             | /                     |
| [回国规则 + 去广告](#回国规则--广告)   | 中国网站           | 国外网站                  |
| [回国规则](#回国规则)             |                |                       |

- 以上所有规则，局域网内请求均直连。
- 可以下载多个规则切换使用。

## 规则使用方法

在 ShadowRocket 应用中，进入 [配置] 页面，点击扫描二维码的按钮添加规则。再激活添加的规则文件即可。

最好让 ShadowRocket 断开并重新连接一次，以确保新的规则文件生效。 


## 请保护好自己

谷歌中英文的搜索体验都优于百度，而刷美剧、ins 追星、去推特看看特朗普也都挺有意思。但是，随着看到的人和事越多，我越发想要在这里说一些话，告诫路过的各位：

**请务必保护好自己** 我们自认为打破了信息的壁垒，其实打破的是保护我们的屏障。因为外网真的存在很多误导性言论，来自各个利益集团对中国网民疯狂洗脑，他们往往还喜欢以平等自由等旗号自称，但仔细想想真的是这样吗？我只知道美国是最善于运用舆论的国家，会结合大数据潜移默化地改变你的观念。如果大家在上网过程中不经意看到了某些观点，务必保留自己独立思考的能力，如果你是一个容易被带偏的人，则建议回到屏障之中。

本规则只提供给大家用于更便捷地学习和工作。如果你是对上述观点持反对意见的极端政治人士，或者已被洗脑，请立即离开，本项目不对你开放。


## 常见问题

- **上千行的代理规则，会对上网速度产生影响吗？**

> 不会的。
>
> 我之前也认为这是一个每次网络数据包经过都会执行一次的规则文件，逐行匹配规则，所以需要尽可能精简。但后来和 SR 作者交流后发现这是一个误区，SR 在每次加载规则时都会生成一棵搜索树，可以理解为对主机名从后往前的有限状态机 DFA，并不是逐行匹配，并且对每次的匹配结果还有个哈希缓存。
>
> 换句话说，2000 行的规则和 50 行的规则在 SR 中均为同一量级的时间复杂度 O(1)。


- **你提供了这么多规则，如何选择适合我的？**

> 最常用的规则是黑名单和白名单。区别在于对待 `未知网站` 的不同处理方式，黑名单默认直连，而白名单则默认使用代理。如果你选择恐惧症爆发，那就两个都下载好了，黑白名单切换使用，天下无忧。

- **你提供了这么多规则，却没有我想要的 o(>.<)o**

> 有任何建议或疑问，[请联系我](#问题反馈)。

- **广告过滤不完全？**

> 该规则并不保证 100% 过滤所有的广告，尤其是视频广告，与网页广告不同的是，优酷等 App 每次升级都有可能更换一次广告策略，因此难以保证其广告屏蔽的实时有效性。


## 问题反馈

任何问题欢迎在 [Issues](https://github.com/lhzptg/Shadowrocket-ADBlock-Rules/issues) 中反馈。

你的反馈会让此规则变得更加完美。

**如何贡献代码？**

通常的情况下，对 [factory 目录](https://github.com/lhzptg/Shadowrocket-ADBlock-Rules/tree/master/factory) 下的 3 个 `manual_*.txt` 文件做对应修改即可。


