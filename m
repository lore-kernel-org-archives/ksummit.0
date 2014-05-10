Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2ED268AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 00:20:02 +0000 (UTC)
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B5935201F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 00:20:01 +0000 (UTC)
Received: by mail-ve0-f177.google.com with SMTP id db11so6052321veb.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 May 2014 17:20:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140509223315.GA5725@thin>
References: <5367D989.1000504@linaro.org>
	<1399581426.11946.12.camel@deadeye.wl.decadent.org.uk>
	<20140509151043.GC15523@thunk.org> <4440149.cMfuUKn6MV@wuerfel>
	<20140509223315.GA5725@thin>
From: Andy Lutomirski <luto@amacapital.net>
Date: Fri, 9 May 2014 17:19:40 -0700
Message-ID: <CALCETrUjuiAeyRyeqrF0Lf_iw+qN3r4OaPLR3HtWMZoZXHqT4w@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset=UTF-8
Cc: John Stultz <john.stultz@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Here's a suggestion.  I don't know whether it's at all practical.
What if we added a mode in which all structs passed into and out of
the kernel use the 64-bit variant *even for 32-bit code*?  Think of it
as the opposite of x32.

This has a big benefit: there's no whole new ABI to maintain.  The
downside is that every single use of unsigned long on the uapi side
will have to change to __u64, etc.  This might be doable
automatically.  Another downside is that some structs may be laid out
differently in the 32-bit C ABI as compared to the 64-bit C ABI, even
given the same primitive type sizes.

Pointers would be tricky.  Hmm.  Could we get gcc and clang to add
__attribute__((64_bit_layout)) if needed?

--Andy
