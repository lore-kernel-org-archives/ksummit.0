Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AFF4C8D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 18:59:51 +0000 (UTC)
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 081FB133
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 18:59:50 +0000 (UTC)
Received: by mail-wm0-f52.google.com with SMTP id f65so74813186wmi.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 11:59:50 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <20160711180705.GA8424@x>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
	<20160711180705.GA8424@x>
From: Kees Cook <keescook@chromium.org>
Date: Mon, 11 Jul 2016 14:59:48 -0400
Message-ID: <CAGXu5jJxQcZwig7nyM=vAXbyqLciDcX6N38wzPRQrDoYf5yE+g@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset=UTF-8
Cc: Jann Horn <jann@thejh.net>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection /
	whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 11, 2016 at 2:07 PM, Josh Triplett <josh@joshtriplett.org> wrote:
> On Mon, Jul 11, 2016 at 01:53:42PM -0400, Kees Cook wrote:
>> On Mon, Jul 11, 2016 at 12:28 AM, Andy Lutomirski <luto@amacapital.net> wrote:
>> > I don't how much of this really needs an in-person meeting, but maybe
>> > some if it would benefit.
>>
>> Perhaps some discussion on new/interesting/better gcc plugins, as the
>> infrastructure and several good examples should have landed by then?
>
> I'd be interested in that as well.  One item for discussion: for some of
> the ideas proposed for implementation via GCC plugins, should the code
> rely on the plugin to provide functionality at compile time, or should
> the plugin identify places in the source that need editing and/or
> explicit annotation?  The former provides the possibility of removing
> annotations in favor of autodetection, which seems more maintainable;
> the latter provides the functionality even without the plugin.

If we can get the same results without gcc plugins, we should do that,
since I think it would good to play nice with other compilers.

That said, not all things that the plugins do can be done natively by
gcc even with annotation. So, I think a hybrid approach is probably
best: warn about things that could be changed with annotation, but
make the changes too.

-Kees

-- 
Kees Cook
Chrome OS & Brillo Security
