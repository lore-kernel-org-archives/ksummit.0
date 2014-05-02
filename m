Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 367408AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 23:35:39 +0000 (UTC)
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C058F1FC50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 23:35:38 +0000 (UTC)
Received: by mail-pa0-f51.google.com with SMTP id fb1so6200206pad.38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 May 2014 16:35:38 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 2 May 2014 16:35:31 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20140502233531.GC5157@roeck-us.net>
References: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
	<20140502205721.GY3245@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140502205721.GY3245@sirena.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 02, 2014 at 01:57:22PM -0700, Mark Brown wrote:
> On Fri, May 02, 2014 at 09:42:04PM +0200, Jiri Kosina wrote:
> 
> > I am a responsible maintainer of kernels for SUSE enterprise products. As 
> > such, I am dealing with -stable trees on a regular basis. Hence, if there 
> > is any discussion related to -stable tree process going to happen, I am 
> > highly interested in that discussion.
> 
> Likewise for me with my work hat on, I maintain a stable kernel for
> Linaro for use on ARM systems.
> 
I wold be interested in this subject as kernel maintainer for Juniper,
and because I run a series of automated tests on the 'official' stable
release candidates.

> > I'd like to re-iterate my usual question / discussion topic of 
> > responsibility distribution for -stable patches; my proposal again would 
> > be to align the -stable tree workflow with Linus' tree workflow -- i.e. 
> > subsystem maintainers preparing 'for-stable' branches and sending pull 
> > requests to the stable team, instead of rather random cherry-picking of 
> > the patches from the air as they fly by the stable team members.
> 
> With my upstream hat on I have to say this seems like a lot of work and
> probably means that most stable fixes that currently go out probably
> just won't happen - there are quite a lot of stable trees being
> maintained and I personally have next to no immediate interest in most
> of them.

Same here. If I (or Jean) think that some patch should be applied to -stable,
I add Cc: stable to the patch before I send it to Linus, or I send a request
to the stable mailing list. Sending pull requests for each of those releases
would add a lot of overhead to that process. And I agree with the comment
that some 'bad' commits might sneak in.

The other side, of course, is that especially Greg must spend a lot of his
time on maintaining stable releases. If there is a way to offload some of
this work from him, I would be all for it; I am just not convinced that
pull requests would be the solution.

Guenter
