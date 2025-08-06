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

enum ContentBlockSocialNetworkType {
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
    on ContentBlockSocialNetworkType {
  SocialNetworksEnum get categoryType {
    switch (this) {
      case ContentBlockSocialNetworkType.whatsapp:
      case ContentBlockSocialNetworkType.telegram:
      // case ContentBlockSocialNetworkType.viber:
      case ContentBlockSocialNetworkType.signal:
      case ContentBlockSocialNetworkType.wechat:
      // case ContentBlockSocialNetworkType.line:
      case ContentBlockSocialNetworkType.skype:
      case ContentBlockSocialNetworkType.discord:
      case ContentBlockSocialNetworkType.messenger:
        return SocialNetworksEnum.messengers;
      case ContentBlockSocialNetworkType.instagram:
      case ContentBlockSocialNetworkType.facebook:
      case ContentBlockSocialNetworkType.vk:
      case ContentBlockSocialNetworkType.linkedin:
      case ContentBlockSocialNetworkType.tiktok:
      case ContentBlockSocialNetworkType.twitter:
      case ContentBlockSocialNetworkType.pinterest:
      case ContentBlockSocialNetworkType.snapchat:
      case ContentBlockSocialNetworkType.reddit:
      case ContentBlockSocialNetworkType.tumblr:
        // case ContentBlockSocialNetworkType.quora:
        // case ContentBlockSocialNetworkType.weibo:
        // case ContentBlockSocialNetworkType.renren:
        // case ContentBlockSocialNetworkType.odnoklassniki:
        return SocialNetworksEnum.socialNetworks;
      // case ContentBlockSocialNetworkType.github:
      // case ContentBlockSocialNetworkType.stackoverflow:
      case ContentBlockSocialNetworkType.behance:
      case ContentBlockSocialNetworkType.dribbble:
        return SocialNetworksEnum.professionalNetworks;
      case ContentBlockSocialNetworkType.spotify:
      case ContentBlockSocialNetworkType.soundcloud:
        // case ContentBlockSocialNetworkType.youtubeMusic:
        // case ContentBlockSocialNetworkType.yandexMusic:
        // case ContentBlockSocialNetworkType.appleMusic:
        // case ContentBlockSocialNetworkType.tidalMusic:
        // case ContentBlockSocialNetworkType.pandora:
        // case ContentBlockSocialNetworkType.deezer:
        return SocialNetworksEnum.music;
      case ContentBlockSocialNetworkType.twitch:
      case ContentBlockSocialNetworkType.vimeo:
      // case ContentBlockSocialNetworkType.dailymotion:
      case ContentBlockSocialNetworkType.youtube:
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
      case ContentBlockSocialNetworkType.email:
      case ContentBlockSocialNetworkType.phone:
      case ContentBlockSocialNetworkType.link:
        return SocialNetworksEnum.contacts;
      // case ContentBlockSocialNetworkType.patreon:
      // case ContentBlockSocialNetworkType.goodreads:
      //   return ContentBlockSocialNetworkCategoryType.other;
    }
  }

  String get title {
    switch (this) {
      case ContentBlockSocialNetworkType.whatsapp:
        return "WhatsApp";
      case ContentBlockSocialNetworkType.telegram:
        return "Telegram";
      // case ContentBlockSocialNetworkType.viber:
      //   return "Viber";
      case ContentBlockSocialNetworkType.signal:
        return "Signal";
      case ContentBlockSocialNetworkType.wechat:
        return "WeChat";
      // case ContentBlockSocialNetworkType.line:
      //   return "LINE";
      case ContentBlockSocialNetworkType.skype:
        return "Skype";
      case ContentBlockSocialNetworkType.discord:
        return "Discord";
      case ContentBlockSocialNetworkType.messenger:
        return "Messenger";
      case ContentBlockSocialNetworkType.instagram:
        return "Instagram";
      case ContentBlockSocialNetworkType.facebook:
        return "Facebook";
      case ContentBlockSocialNetworkType.youtube:
        return "YouTube";
      case ContentBlockSocialNetworkType.vk:
        return "VK";
      case ContentBlockSocialNetworkType.linkedin:
        return "LinkedIn";
      case ContentBlockSocialNetworkType.tiktok:
        return "TikTok";
      case ContentBlockSocialNetworkType.twitter:
        return "X (Twitter)";
      case ContentBlockSocialNetworkType.pinterest:
        return "Pinterest";
      case ContentBlockSocialNetworkType.snapchat:
        return "Snapchat";
      case ContentBlockSocialNetworkType.reddit:
        return "Reddit";
      case ContentBlockSocialNetworkType.tumblr:
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
      case ContentBlockSocialNetworkType.behance:
        return "Behance";
      case ContentBlockSocialNetworkType.dribbble:
        return "Dribbble";
      case ContentBlockSocialNetworkType.spotify:
        return "Spotify";
      case ContentBlockSocialNetworkType.soundcloud:
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
      case ContentBlockSocialNetworkType.twitch:
        return "Twitch";
      case ContentBlockSocialNetworkType.vimeo:
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
      case ContentBlockSocialNetworkType.email:
        return "Email";
      case ContentBlockSocialNetworkType.phone:
        return "Телефон";
      case ContentBlockSocialNetworkType.link:
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
      case ContentBlockSocialNetworkType.email:
        return "Введите email";
      case ContentBlockSocialNetworkType.phone:
        return "Введите номер телефона";
      default:
        return "Введите ссылку";
    }
  }
}
