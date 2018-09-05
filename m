Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4A7B5F18
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 13:39:20 +0000 (UTC)
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E17DE2D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 13:39:19 +0000 (UTC)
Received: by mail-qt0-f195.google.com with SMTP id z8-v6so8029395qto.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 06:39:19 -0700 (PDT)
Date: Wed, 5 Sep 2018 09:39:16 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20180905133916.GA22160@puremoods>
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<s5hd0tsccdw.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <s5hd0tsccdw.wl-tiwai@suse.de>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas	considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 05, 2018 at 03:16:59PM +0200, Takashi Iwai wrote:
> > Second suggestion is that the bugzillas need to say much more strongly
> > that the reporter really needs to confirm the fix in upstream and do
> > the bisection themselves (and ideally request the backport to stable
> > themselves).
> 
> OK, distros definitely need to try hard not to annoy upstream devs.
> 
> In the case of SUSE Kernel, we usually ask testing the latest
> (more-or-less) vanilla kernel at first.  If it's an upstream problem,
> then it's often tossed to the upstream.  If it's already addressed in
> the upstream kernel, we take the responsibility for backports.  Asking
> bisection by reporter is usually the last resort.
> 
> It'd be helpful if we get any suggestion to improve the process.

It would be awesome to have a "bisect@home" type of thing with a similar
idea like seti@home and folding@home. Have a central queue where
developers can submit upstream commits and testcases, and a swarm of
volunteer drones would grab and bisect-build them until the
bug-introducing commit is identified and reported back.

I'll totally host the hell out of this.

-K
