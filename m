Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 71337BC9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 02:16:21 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EA40F10D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 02:16:20 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 46C21209E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:16:20 -0400 (EDT)
Date: Tue, 7 Jul 2015 19:16:19 -0700
From: Greg KH <greg@kroah.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20150708021619.GC3102@kroah.com>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
	<20150707225223.GG12491@dtor-ws>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150707225223.GG12491@dtor-ws>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] services needed from kernel.org
 infrastructure
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 07, 2015 at 03:52:23PM -0700, Dmitry Torokhov wrote:
> On Tue, Jul 07, 2015 at 11:40:25PM +0100, Mark Brown wrote:
> > On Tue, Jul 07, 2015 at 10:42:49PM +0200, Jiri Kosina wrote:
> > 
> > > I personally would very welcome a facility that'd send out an e-mail if a 
> > > new commit is pushed to a git.kernel.org repo branch (sort of what tip-bot 
> > > and akpm's scripts are doing these days) to automatically notify the patch 
> > > author that the patch has been merged and pushed out.
> > 
> > Those are useful, I know Greg has one and I just wrote one too.  I'm not
> > sure it needs to be on the server side though, they can also be done
> > from the client which lets you try to fine tune things more readily.
> 
> If either of you could share the scripts that would be great.

Mine is based on Andrew's scripts, and can be found buried in my
"gregkh-linux" repo which is a shadow of my 'linux/' subdir on my
development machines, specifically this file:
	https://github.com/gregkh/gregkh-linux/blob/master/work/do.sh

Yeah, my scripts are named 'do.sh', naming is hard...

greg k-h
