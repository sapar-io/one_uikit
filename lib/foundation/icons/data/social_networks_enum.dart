part of '../one_icons.dart';

enum SocialNetworksEnum {
  messengers,
  socialNetworks,
  professionalNetworks,
  music,
  video,
  blog,
  photo,
  contacts,
  other,
}

extension SocialNetworksEnumExtension
    on SocialNetworksEnum {
  String get title {
    switch (this) {
      case SocialNetworksEnum.messengers:
        return "Мессенджеры";
      case SocialNetworksEnum.socialNetworks:
        return "Социальные сети";
      case SocialNetworksEnum.professionalNetworks:
        return "Профессиональные сети";
      case SocialNetworksEnum.music:
        return "Музыкальные платформы";
      case SocialNetworksEnum.video:
        return "Видео платформы";
      case SocialNetworksEnum.blog:
        return "Блоги и публикации";
      case SocialNetworksEnum.photo:
        return "Фото платформы";
      case SocialNetworksEnum.contacts:
        return "Контакты";
      case SocialNetworksEnum.other:
        return "Другие платформы";
    }
  }
}

enum SocialNetworkTypeEnum {
  // * Мессенджеры
  whatsapp, // +
  telegram, // +
  // viber,
  signal, // +
  wechat, // +
  // line,
  skype, // +
  discord, // +
  messenger,

  // * Социальные сети
  instagram, // +
  facebook, // +
  vk, // +
  linkedin, // +
  tiktok, // +
  twitter, // +
  pinterest, // +
  snapchat, // +
  reddit, // +
  tumblr, // +
  // quora,
  // weibo, // Китай
  // renren, // Китай
  // odnoklassniki, // Россия

  // * Профессиональные сети
  // github,
  // stackoverflow,
  behance, // +
  dribbble, // +

  // * Музыкальные платформы
  spotify, // +
  soundcloud, // +
  // youtubeMusic,
  // yandexMusic,
  // appleMusic,
  // tidalMusic,
  // pandora,
  // deezer,

  // * Видео платформы
  twitch, // +
  youtube, // +
  vimeo, // +
  // dailymotion,

  // * Блоги и публикации
  // medium,
  // wordpress,
  // substack,

  // * Фото платформы
  // flickr,
  // px500,

  // * Контакты
  email,
  phone,
  link,

  // * Мессенджеры для бизнеса
  // slack,
  // teams,

  // * Другие платформы
  // patreon,
  // goodreads,
}

extension ContentBlockSocialNetworkTypeExtension
    on SocialNetworkTypeEnum {
  SocialNetworksEnum get categoryType {
    switch (this) {
      case SocialNetworkTypeEnum.whatsapp:
      case SocialNetworkTypeEnum.telegram:
      // case ContentBlockSocialNetworkType.viber:
      case SocialNetworkTypeEnum.signal:
      case SocialNetworkTypeEnum.wechat:
      // case ContentBlockSocialNetworkType.line:
      case SocialNetworkTypeEnum.skype:
      case SocialNetworkTypeEnum.discord:
      case SocialNetworkTypeEnum.messenger:
        return SocialNetworksEnum.messengers;
      case SocialNetworkTypeEnum.instagram:
      case SocialNetworkTypeEnum.facebook:
      case SocialNetworkTypeEnum.vk:
      case SocialNetworkTypeEnum.linkedin:
      case SocialNetworkTypeEnum.tiktok:
      case SocialNetworkTypeEnum.twitter:
      case SocialNetworkTypeEnum.pinterest:
      case SocialNetworkTypeEnum.snapchat:
      case SocialNetworkTypeEnum.reddit:
      case SocialNetworkTypeEnum.tumblr:
        // case ContentBlockSocialNetworkType.quora:
        // case ContentBlockSocialNetworkType.weibo:
        // case ContentBlockSocialNetworkType.renren:
        // case ContentBlockSocialNetworkType.odnoklassniki:
        return SocialNetworksEnum.socialNetworks;
      // case ContentBlockSocialNetworkType.github:
      // case ContentBlockSocialNetworkType.stackoverflow:
      case SocialNetworkTypeEnum.behance:
      case SocialNetworkTypeEnum.dribbble:
        return SocialNetworksEnum.professionalNetworks;
      case SocialNetworkTypeEnum.spotify:
      case SocialNetworkTypeEnum.soundcloud:
        // case ContentBlockSocialNetworkType.youtubeMusic:
        // case ContentBlockSocialNetworkType.yandexMusic:
        // case ContentBlockSocialNetworkType.appleMusic:
        // case ContentBlockSocialNetworkType.tidalMusic:
        // case ContentBlockSocialNetworkType.pandora:
        // case ContentBlockSocialNetworkType.deezer:
        return SocialNetworksEnum.music;
      case SocialNetworkTypeEnum.twitch:
      case SocialNetworkTypeEnum.vimeo:
      // case ContentBlockSocialNetworkType.dailymotion:
      case SocialNetworkTypeEnum.youtube:
        return SocialNetworksEnum.video;
      // case ContentBlockSocialNetworkType.medium:
      // case ContentBlockSocialNetworkType.wordpress:
      // case ContentBlockSocialNetworkType.substack:
      //   return ContentBlockSocialNetworkCategoryType.blog;
      // case ContentBlockSocialNetworkType.slack:
      // case ContentBlockSocialNetworkType.teams:
      //   return ContentBlockSocialNetworkCategoryType.messengers;
      // case ContentBlockSocialNetworkType.flickr:
      // case ContentBlockSocialNetworkType.px500:
      //   return ContentBlockSocialNetworkCategoryType.photo;
      case SocialNetworkTypeEnum.email:
      case SocialNetworkTypeEnum.phone:
      case SocialNetworkTypeEnum.link:
        return SocialNetworksEnum.contacts;
      // case ContentBlockSocialNetworkType.patreon:
      // case ContentBlockSocialNetworkType.goodreads:
      //   return ContentBlockSocialNetworkCategoryType.other;
    }
  }

  String get title {
    switch (this) {
      case SocialNetworkTypeEnum.whatsapp:
        return "WhatsApp";
      case SocialNetworkTypeEnum.telegram:
        return "Telegram";
      // case ContentBlockSocialNetworkType.viber:
      //   return "Viber";
      case SocialNetworkTypeEnum.signal:
        return "Signal";
      case SocialNetworkTypeEnum.wechat:
        return "WeChat";
      // case ContentBlockSocialNetworkType.line:
      //   return "LINE";
      case SocialNetworkTypeEnum.skype:
        return "Skype";
      case SocialNetworkTypeEnum.discord:
        return "Discord";
      case SocialNetworkTypeEnum.messenger:
        return "Messenger";
      case SocialNetworkTypeEnum.instagram:
        return "Instagram";
      case SocialNetworkTypeEnum.facebook:
        return "Facebook";
      case SocialNetworkTypeEnum.youtube:
        return "YouTube";
      case SocialNetworkTypeEnum.vk:
        return "VK";
      case SocialNetworkTypeEnum.linkedin:
        return "LinkedIn";
      case SocialNetworkTypeEnum.tiktok:
        return "TikTok";
      case SocialNetworkTypeEnum.twitter:
        return "X (Twitter)";
      case SocialNetworkTypeEnum.pinterest:
        return "Pinterest";
      case SocialNetworkTypeEnum.snapchat:
        return "Snapchat";
      case SocialNetworkTypeEnum.reddit:
        return "Reddit";
      case SocialNetworkTypeEnum.tumblr:
        return "Tumblr";
      // case ContentBlockSocialNetworkType.quora:
      //   return "Quora";
      // case ContentBlockSocialNetworkType.weibo:
      //   return "Weibo";
      // case ContentBlockSocialNetworkType.renren:
      //   return "Renren";
      // case ContentBlockSocialNetworkType.odnoklassniki:
      //   return "Одноклассники";
      // case ContentBlockSocialNetworkType.github:
      //   return "GitHub";
      // case ContentBlockSocialNetworkType.stackoverflow:
      //   return "Stack Overflow";
      case SocialNetworkTypeEnum.behance:
        return "Behance";
      case SocialNetworkTypeEnum.dribbble:
        return "Dribbble";
      case SocialNetworkTypeEnum.spotify:
        return "Spotify";
      case SocialNetworkTypeEnum.soundcloud:
        return "SoundCloud";
      // case ContentBlockSocialNetworkType.youtubeMusic:
      //   return "YouTube Music";
      // case ContentBlockSocialNetworkType.yandexMusic:
      //   return "Яндекс Музыка";
      // case ContentBlockSocialNetworkType.appleMusic:
      //   return "Apple Music";
      // case ContentBlockSocialNetworkType.tidalMusic:
      //   return "TIDAL";
      // case ContentBlockSocialNetworkType.pandora:
      //   return "Pandora";
      // case ContentBlockSocialNetworkType.deezer:
      //   return "Deezer";
      case SocialNetworkTypeEnum.twitch:
        return "Twitch";
      case SocialNetworkTypeEnum.vimeo:
        return "Vimeo";
      // case ContentBlockSocialNetworkType.dailymotion:
      //   return "Dailymotion";
      // case ContentBlockSocialNetworkType.medium:
      //   return "Medium";
      // case ContentBlockSocialNetworkType.wordpress:
      //   return "WordPress";
      // case ContentBlockSocialNetworkType.substack:
      //   return "Substack";
      // case ContentBlockSocialNetworkType.flickr:
      //   return "Flickr";
      // case ContentBlockSocialNetworkType.px500:
      //   return "500px";
      case SocialNetworkTypeEnum.email:
        return "Email";
      case SocialNetworkTypeEnum.phone:
        return "Телефон";
      case SocialNetworkTypeEnum.link:
        return "Ссылка";
      // case ContentBlockSocialNetworkType.slack:
      //   return "Slack";
      // case ContentBlockSocialNetworkType.teams:
      //   return "Microsoft Teams";
      // case ContentBlockSocialNetworkType.patreon:
      //   return "Patreon";
      // case ContentBlockSocialNetworkType.goodreads:
      //   return "Goodreads";
    }
  }

  String get hintText {
    switch (this) {
      case SocialNetworkTypeEnum.email:
        return "Введите email";
      case SocialNetworkTypeEnum.phone:
        return "Введите номер телефона";
      default:
        return "Введите ссылку";
    }
  }
}
