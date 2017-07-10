Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 18148B10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Jul 2017 11:16:11 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BD76A152
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Jul 2017 11:16:10 +0000 (UTC)
Date: Mon, 10 Jul 2017 14:15:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20170710111555.b66w4vuc6irur5n4@mwanda>
References: <20170706144028.46a2mt2mdzpt6ip7@mwanda>
	<20170706144208.6hlgxwo37gntk6qm@mwanda>
	<CAMuHMdW4FFJkhA7oj0uA1an_WNt1wS-tM1KvnjYWwdfjRLjQ7A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdW4FFJkhA7oj0uA1an_WNt1wS-tM1KvnjYWwdfjRLjQ7A@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH 2/2] kconfig: new command line kernel
 configuration tool
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 10, 2017 at 11:44:22AM +0200, Geert Uytterhoeven wrote:
> > --- /dev/null
> > +++ b/scripts/kconfig/lconf.c
> > @@ -0,0 +1,332 @@
> > +/*
> > + * Copyright (C) 2015 Oracle
> > + * Released under the terms of the GNU GPL v2.0.
> > + *
> > + */
> > +#define _GNU_SOURCE
> 
>     scripts/kconfig/lconf.c:6:0: warning: "_GNU_SOURCE" redefined
>      #define _GNU_SOURCE
>      ^
>     <command-line>:0:0: note: this is the location of the previous definition
> 
> You can do:
> 
>     #ifndef _GNU_SOURCE
>     #define _GNU_SOURCE
>     #endif
> 
> like scripts/kconfig/nconf.c does.

Will do.

> 
> 
> > +static int conf_sym(struct symbol *sym)
> > +{
> 
> > +               if (sym_set_tristate_value(sym, newval)) {
> > +                       /* FIXME: if I don't write it doesn't save */
> > +                       conf_write(NULL, 1);
> 
>     scripts/kconfig/lconf.c: In function ‘conf_sym’:
>     scripts/kconfig/lconf.c:159:4: error: too many arguments to
> function ‘conf_write’
>         conf_write(NULL, 1);


I added that in [PATCH 1/2], otherwise there is a lot of unwanted
output.

> Likewise
> 
> 
> For search, it doesn't work with the CONFIG_ prefix:


Will fix.

> 
> Nice!
> 
> BTW, forgetting the =y causes a crash:
> 

Oops.  Sorry.  Will fix.

regards,
dan carpenter
