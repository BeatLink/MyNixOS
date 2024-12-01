{ config, pkgs, ... }: 
{
    home.file = {
      ".config/autostart/com.ulduzsoft.Birdtray.desktop".text = ''
            [Desktop Entry]
            Name=Birdtray
            Keywords=Email;E-mail;Newsgroup;Feed;RSS
            Keywords[ast]=Corréu;Corréu-e;Noticies;Discusiones;Mensaxes;Canales;RSS
            Keywords[ca]=Correu;Email;E-mail;Mailing;Llistes;Notícies;RSS
            Keywords[cs]=Email;E-mail;Pošta;Elektronická pošta;Diskusní skupiny;Čtečka;RSS
            Keywords[da]=Email;E-mail;Epost;E-post;E-brev;Newsgroup;Nyhedsgruppe;Nyhedskilde;Usenet;Feed;RSS
            Keywords[de]=Mail;E-Mail;Newsgroup;Nachrichten;Feed;RSS;Post;News;Usenet;online;lesen;schreiben
            Keywords[el]=Email;E-mail;Newsgroup;Feed;RSS;ημαιλ;Αλληλογραφία;Ροή;ΡΣΣ;Συζητήσεις;Γράμματα
            Keywords[es]=Email;Correo electrónico;Noticias;Discusiones;Mensajes;Canales;RSS
            Keywords[fi]=Mail;E-Mail;Email;Newsgroup;Feed;RSS;posti;sähköposti;maili;meili;Usenet;uutisryhmät;syöte
            Keywords[fr]=Mails;Mels;E-Mails;Emails;Courriels;Courriers;Newsgroup;Feed;RSS;Poster;Thunderbird;Lire;Écrire
            Keywords[he]=דוא"ל;דוא״ל;מייל;אי-מייל;אימייל;הודעות;מוזילה;תאנדרבירד;ת׳אנדרבירד;ת'אנדרבירד;ת׳אנדרברד;ת'אנדרברד;דואל;
            Keywords[hr]=email;e-mail;e-pošta;pošta;RSS
            Keywords[hu]=Email;E-mail;Levél;Levelezés;Hírcsoport;Feed;Hírforrás;RSS
            Keywords[it]=Email;Mail;Posta;Newsgroup;Feed;RSS
            Keywords[is]=tölvupóstur;rafpóstur;fréttir;fréttahópar;samtöl;skilaboð;fréttastraumar;RSS
            Keywords[ja]=Eメール;イーメール;mail;e-mail;email;メール;電子メール;ニュースグループ;ネットニュース;RSS;フィードリーダー;書く;読む;Mozilla
            Keywords[nl]=Email;E-mail;Newsgroup;Feed;RSS;Nieuwsgroep;Post
            Keywords[ru]=Email;E-mail;Newsgroup;Feed;RSS;почта;письма;новости;фиды
            Keywords[sk]=Email;E-mail;Elektronická pošta;Diskusné skupiny;Čítačka kanálov;RSS
            Keywords[uk]=Email;E-mail;Newsgroup;Feed;RSS;пошта;новини;подачі;стрічка
            Keywords[vi]=Mail;E-Mail;Email;Newsgroup;Feed;RSS;Thư điện tử;Gửi thư
            Keywords[zh_CN]=Mail;E-Mail;Email;Newsgroup;Feed;RSS;电子;邮件;新闻;Thunderbird;tb;雷鸟;电邮;邮箱;阅读器;
            Exec=/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=birdtray com.ulduzsoft.Birdtray
            Terminal=false
            X-MultipleArgs=false
            Type=Application
            Icon=com.ulduzsoft.Birdtray
            Categories=Network;Email;
            StartupNotify=true
            X-Flatpak=com.ulduzsoft.Birdtray
            X-GNOME-Autostart-enabled=true
            NoDisplay=false
            Hidden=false
            Name[en_US]=Birdtray
            Comment[en_US]=No description
            X-GNOME-Autostart-Delay=0
      '';
    };
}