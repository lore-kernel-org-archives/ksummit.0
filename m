Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 98ED192B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 07:57:27 +0000 (UTC)
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3FF8F13A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 07:57:27 +0000 (UTC)
Received: by mail-it0-f65.google.com with SMTP id 139-v6so6635530itf.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 00:57:27 -0700 (PDT)
MIME-Version: 1.0
References: <BY1PR0501MB14623C8F42765E4852FD5A39C51B0@BY1PR0501MB1462.namprd05.prod.outlook.com>
	<CACRpkdb8c51RABEVhn5tibVxiqTDBRXJ5A5wU5nDfubr6p3nMw@mail.gmail.com>
	<20180912162923.GA25894@wrath>
	<BY1PR0501MB1462CF95EB4423BD59F5D3EBC51A0@BY1PR0501MB1462.namprd05.prod.outlook.com>
In-Reply-To: <BY1PR0501MB1462CF95EB4423BD59F5D3EBC51A0@BY1PR0501MB1462.namprd05.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 13 Sep 2018 09:57:13 +0200
Message-ID: <CACRpkdaUxrX2bPo8nCGHeV6uvx6HDbqP+ufssNAxdyJCH735Rw@mail.gmail.com>
To: tiejunc@vmware.com
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] A Safety-critical Linux system
	architecture
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 13, 2018 at 5:13 AM Tiejun Chen <tiejunc@vmware.com> wrote:
> > On Wed, Sep 12, 2018 at 12:35:07PM +0200, Linus Walleij wrote:
> > > On Wed, Sep 12, 2018 at 3:18 AM Tiejun Chen <tiejunc@vmware.com> wrote:

> > I do not feel Kernel Summit is the right venue for this discussion.

> I cannot understand why we cannot make this over there.

I have to side with Darren on this one, but I will likely not be at KS myself
so take whatever I say with a grain of salt.

I think the LF projects, specifically SIL2LinuxMP etc need to find their
right place to gather people and IMO the Linux Plumbers Conference
or Embedded Linux Conference would be the best place, it just intuitively
fits the type of subject.

But it is not for me to decide.

For the core kernel, I think tooling to the build system and git annotation
of safety reviews are the only things that come to mind, and it doesn't
need much discussion: somone needs to send patches. If they prove
extremely controversial and lead to lots of discussion (etc) THEN we
might want to discuss it at the kernel summit if things grind to a halt.

Yours,
Linus Walleij
