Return-Path: <christian@brauner.io>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 537A3C11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Jun 2019 09:10:44 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 302173D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Jun 2019 09:10:42 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id s15so11097961wmj.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 29 Jun 2019 02:10:42 -0700 (PDT)
Date: Sat, 29 Jun 2019 11:10:39 +0200
From: Christian Brauner <christian@brauner.io>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190629091037.ysc6yhamypxq522b@brauner.io>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jun 29, 2019 at 08:19:55AM +0200, Thomas Gleixner wrote:
> On Fri, 28 Jun 2019, Luck, Tony wrote:
> > On Fri, Jun 28, 2019 at 02:11:28PM -0600, Shuah Khan wrote:
> > > In a recent patch discussion, I learned that some maintainers would like
> > > to see patch version changes in the commit log.
> > > 
> > > I went looking in the git log and found a handful of recent commits with
> > > "Changes since" type information in the commit logs. It appears to be
> > > maintainer preference and a recent trend.
> > > 
> > > I see the value in including the information. It can be informative
> > > and valuable for future work in the area.
> > > 
> > > Is this something that we would like to see in all commits going forward? If
> > > so, updating submitting patch documentation and making
> > > sure the version information evolves from "informal" to more formal
> > > nature that fits in with the commit logs would be helpful.
> > > 
> > > Making sure it doesn't get out of hand and commit logs don't
> > > become too long to be useful would also be helpful.
> > > 
> > > Late entry, as I happened to come across this a day or two ago.
> > 
> > Sounds somewhat pointless. Picking on a recent commit I see:
> > 
> >     Changes since:
> >     v2:
> >      - Added Fixes tag to patch 1
> >      - Fixed typo
> >      - added GSWIP_TABLE_MAC_BRIDGE_STATIC and made use of it
> >      - used GSWIP_TABLE_MAC_BRIDGE in more places
> >     
> >     v1:
> >      - fix typo signle -> single
> > 
> > I don't see why someone in the future trying to debug some problem
> > introduced by this commit would care that earlier versions had some
> > spelling mistakes or were missing a Fixes: tag. :-)
> 
> Right.
> 
> > Where substantial changes were made between patch versions it
> > would be useful if the commit logs were adapted to say things like:
> > 
> >  "We considered using technique X to do this but rejected
> >   it because person Y said it had problem Z"
> > 
> > That captures for posterity the useful information without
> > bulking up the commit log with the blow-by-blow deltas of
> > how the patch series evolved across 27 versions submitted
> > to the mailing list.
> 
> What's really useful is when the commit has a Link tag:
> 
>        https://lore.kernel.org/lkml/$MESSAGE-ID
> 
> and if the submitters provide the same kind of link in their V(N)
> submission pointing to the V(N-1) in the cover letter:
> 
>        https://lore.kernel.org/lkml/$MESSAGE-ID-V(N-1)
> 
> If it's a single patch the link can be in the patch itself after the ---
> separator. That allows a quick lookup of the history.
> 
> I also really want the change history to be at that place. i.e.
> 
>  Subject ....
> 
>  changelog text
> 
>  Tags...
>  Signed-off-by: Joe Hacker
> 
>  ---
> 
>  V3: Fixed typo
> 
>  V2: Made it work
>      https://lore.kernel.org/.... (if single patch)
> 
>  ---
> 
>  diffstat
> 
>  ---
> 
>  patch
> 
> That way tools just strip the changes section away and the maintainer does
> not have to handle it manually.
> 
> Can we pretty please agree on that format and make it mandatory?

That sounds really useful. Imho, the ideal is:
- patch submissions:
  - Thomas format outlined above
- commit message in Linus/Maintainers tree:
  - lore-Link to the last sent submission that turned into the accepted
    patch (again, Thomas)
  - but keeping specific version information v1, ..., vn out of the
    commit message

I do like lore-Links a lot and I have made quite heavy use of them in
commit messages by using the format:

"We did x because of y. For the full rationale see [1]."

and then add the end of the commit message right before the DCOs I have
a "References" section:

/* References */
[1]: [6]: https://lore.kernel.org/lkml/<ID>

If we could codify this somewhere in the kernel documentation I'm all for it!

Christian
