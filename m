Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EBEDD982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 21:07:25 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0214.hostedemail.com
	[216.40.44.214])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 7B28C1DCCF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 21:07:25 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 66F1F290F96
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:31:44 +0000 (UTC)
Date: Fri, 10 Jul 2015 16:31:41 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150710163141.490def2a@gandalf.local.home>
In-Reply-To: <1436558412.24408.35.camel@infradead.org>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
	<1436558412.24408.35.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Fri, 10 Jul 2015 21:00:12 +0100
David Woodhouse <dwmw2@infradead.org> wrote:
=20
> Rather than sending messages, it's actually better to put them as
> *drafts*, ready to be sent by the user's normal mailer. It's not hard
> to do this =E2=80=94 I usually dump the mails into
> ~/.local/share/evolution/mail/local/.Drafts/new/ for example.

That's also a good idea. Although I use claws-mail. But it should work.

>=20
> And then I can *read* them before sending them, which is good practice
> anyway. Am I the only person who often finds a final minor nit with
> their own patch, in that final read-through just before hitting 'send'
> on an email?

This is exactly what I do before sending. But I just do:

 vim patches/*.patch

>=20
> Perhaps we should provide tools which make it trivial to do the same
> for various different mail clients, without users having to know where,
> and in what form, their drafts folders are?
>=20

Sounds like a plan ;-)

-- Steve
