Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 47FEB46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 00:38:32 +0000 (UTC)
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D35522028D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 00:38:31 +0000 (UTC)
Received: by mail-pd0-f178.google.com with SMTP id w10so587660pde.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 17:38:31 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 13 Aug 2014 17:38:27 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20140814003827.GA359@roeck-us.net>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
	<20140813180743.GB16662@roeck-us.net>
	<CAMuHMdVEYEsk1EtBbAAinJ=7m5SRh-w4DZb=_N0gaMgpvtRadw@mail.gmail.com>
	<20140813224507.GA29606@roeck-us.net>
	<20140814001450.GW17528@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140814001450.GW17528@sirena.org.uk>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] RFC: Kernel tinification - kernel config
 reduction
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 14, 2014 at 01:14:50AM +0100, Mark Brown wrote:
> On Wed, Aug 13, 2014 at 03:45:07PM -0700, Guenter Roeck wrote:
> 
> > > The few allmodconfig/allyesconfig builds on
> > > kisskb.ellerman.id.au/kisskb/matrix/ are actually not in such a bad shape.
> > > Shall more be added?
> 
> I can't get that site to load...
> 
Takes forever for me, but after a minute or so I get the results.

> > I don't think there are any you could add, at least none which actually build.
> 
> arm64 should work most of the time - I've been building it daily and
> reporting the results, it's also pretty clear of warnings which is good.
> There's a couple of disappointing problems at the minute though.
> 
I don't get past

scripts/mod/devicetable-offsets.c: In function 'main':
scripts/mod/devicetable-offsets.c:190:1: sorry, unimplemented: function
profiling

This is with gcc 4.8.1 for aarch64, built from buildroot, and host gcc
4.8.2-19ubuntu1. Do I need a new/different compiler ?

> > arm:allmodconfig was quite useful, but it has been broken since 3.10 or so,
> > and I don't think it will ever get fixed.
> 
> Why not?
> 
Beats me. The longer it is broken, the more difficult it will become
to fix it, and thus less likely.

Guenter
