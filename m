Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D79DC93E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 13:00:59 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 3A2DB160
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 13:00:59 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 11 Jul 2016 15:05:41 +0200
Message-ID: <4238535.UPEnvzL7tx@vostro.rjw.lan>
In-Reply-To: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Jann Horn <jann@thejh.net>, ksummit-discuss@lists.linuxfoundation.org
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

On Sunday, July 10, 2016 09:28:53 PM Andy Lutomirski wrote:
> Are there useful things to discuss in person about hardening?  (I
> don't want to bikeshed about the name at the kernel summit if we can
> possibly avoid it.)
> 
> Plausible sub-topics include:
> 
>  - "USERCOPY" hardening
> 
>  - Virtually mapped stacks (I'm hoping to have that in for x86 before
> kernel summit...)
> 
>  - Refcount
> 
> I don't how much of this really needs an in-person meeting, but maybe
> some if it would benefit.

I, for one, would like to know in advance if things are in planning that may
interfere with stuff like hibernation or it gets really ugly when breakage
has to be fixed after the fact.

Thanks,
Rafael
