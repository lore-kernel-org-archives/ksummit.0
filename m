Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9F279891
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Jul 2017 09:02:21 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0F3DB18D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Jul 2017 09:02:20 +0000 (UTC)
Date: Fri, 7 Jul 2017 12:02:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <20170707090206.uiry6j7yizpl7yw4@mwanda>
References: <20170706144028.46a2mt2mdzpt6ip7@mwanda>
	<20170706144208.6hlgxwo37gntk6qm@mwanda>
	<CAJKOXPfE+ffRWq_1JB_1LSpg4gDne5pWNN2fKd-3t1hwX7amFA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJKOXPfE+ffRWq_1JB_1LSpg4gDne5pWNN2fKd-3t1hwX7amFA@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org, Michal Hocko <mhocko@kernel.org>
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

On Fri, Jul 07, 2017 at 07:55:27AM +0200, Krzysztof Kozlowski wrote:
> On Thu, Jul 6, 2017 at 4:42 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > This tool barely works, it's just a rough draft.
> >
> > Sometimes I want to search for a config so I have to load menuconfig,
> > then search for the config entry, then exit.  With this script I
> > simply run:
> >
> >     ./scripts/kconfig/kconfig search COMEDI
> >
> > Quite often I find myself trying to enable a feature by doing this:
> >
> >     echo CONFIG_FEATURE=y >> .config
> >
> > But when I try to boot the new kernel, I find that the feature isn't
> > there because the kernel runs `make oldconfig` and I didn't have all
> > the depends selected so it silently removed it.  With this feature
> > what you can do is:
> >
> >     ./scripts/kconfig/kconfig set FEATURE=y
> 
> Sounds useful. I need to enable few options from scripts and if
> dependencies change they could be silently skipped.
> 
> Probably it would be nice to print what was effectively enabled to get
> your feature in. However why not extending existing scripts/config? It
> already has the feature for setting kconfig options (without looking
> at dependencies - so like >> of yours).
> 

I didn't know about scripts/config when I wrote it.  scripts/config is
essentially a UI around "echo CONFIG_FOO=m >> .config".  It's totally
useless.

regards,
dan carpenter
