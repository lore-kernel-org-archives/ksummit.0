Return-Path: <jwboyer@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 28AB0ABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:43:59 +0000 (UTC)
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A0EFD12C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:43:58 +0000 (UTC)
Received: by igoe12 with SMTP id e12so43126660igo.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 13:43:58 -0700 (PDT)
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <1436560838.24408.52.camel@infradead.org>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
	<1436558412.24408.35.camel@infradead.org>
	<20150710163141.490def2a@gandalf.local.home>
	<1436560838.24408.52.camel@infradead.org>
Date: Fri, 10 Jul 2015 16:43:57 -0400
Message-ID: <CA+5PVA6-rZxNnOh+kJc2nyde78wRa+Oqz+mNeoqTDq-VfcSqTQ@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
To: David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 10, 2015 at 4:40 PM, David Woodhouse <dwmw2@infradead.org> wrote:
> On Fri, 2015-07-10 at 16:31 -0400, Steven Rostedt wrote:
>>
>> > And then I can *read* them before sending them, which is good practice
>> > anyway. Am I the only person who often finds a final minor nit with
>> > their own patch, in that final read-through just before hitting 'send'
>> > on an email?
>>
>> This is exactly what I do before sending. But I just do:
>>
>>  vim patches/*.patch
>
> That works too. Perhaps that would be the easier option for people who
> aren't sure of their normal mailer.
>
> It's mostly the *client* that screws formatting up, rather than the
> transport. So maybe the best thing to advise new people to do is put
> the messages into files, vet them as you describe above (except using
> emacs instead of vim, of course), and then provide a simple tool which
> will *send* the messages from those files, via whatever transport the
> user needs.
>
> I think we can cope with the SMTP case already but I'm not sure if we
> can do it from pre-vetted files, or only directly from git-send-email?
> It's not hard to add support for also sending via ActiveSync and EWS,
> for the Exchange-afflicted.
>
> Can one still send "from" GMail via SMTP these days? How does the 2
> -factor authentication work? Do we cope with that?

You can, but it doesn't support 2FA.  You have to generate one of
those "device" or "application" passwords and use that instead.
Things might have changed since I last set it up, but that is what I
had to do to use google SMTP via mutt.

josh
