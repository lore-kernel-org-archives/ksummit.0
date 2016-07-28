Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A24A69AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 02:55:21 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0081.hostedemail.com
	[216.40.44.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 25173116
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 02:55:21 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 0CBC328E9F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 02:55:19 +0000 (UTC)
Date: Wed, 27 Jul 2016 22:55:14 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20160727225514.39968c3b@grimm.local.home>
In-Reply-To: <1469097402.120686.129.camel@infradead.org>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<20160719073346.GB24189@swordfish>
	<9794ced1-3c45-c548-9520-15d1b66aef31@suse.com>
	<20160719074631.GC24189@swordfish>
	<a38a0bc9-12c9-6234-9645-5d3ad4f83023@suse.com>
	<1469097402.120686.129.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 21 Jul 2016 11:36:42 +0100
David Woodhouse <dwmw2@infradead.org> wrote:


> A viable solution to fix this might be a 'synchronous' flag on the
> console itself =E2=80=94 so I could boot with 'console=3DttyS0,synchronou=
s' and
> get a debuggable system again, Or maybe it would be simpler to have a
> system-wide control which makes all consoles synchronous, if that's
> easier. Either way, we do need the option, and we need it to apply to
> *all* output, not just KERN_EMERG messages.
>=20

For these cases I use, earlyprintk=3DttyS0,keep

;-)

Actually, the RT patch has a option to force all printk()s to be
earlyprintk directly. I have a separate patch that has a special
spinlock to keep SMP from stomping all over the output. It's special
because it locks per CPU, if an NMI comes in while the current context
has the lock and is printing, it will corrupt the buffer being printed,
but I don't care at that moment. If NMI is doing printks, its message
will be more important anyway.

-- Steve
