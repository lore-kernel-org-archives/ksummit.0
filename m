Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E0BD44D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 03:07:11 +0000 (UTC)
Received: from mho-02-ewr.mailhop.org (mho-02-ewr.mailhop.org [204.13.248.72])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 672CD1FD49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 03:07:11 +0000 (UTC)
Date: Thu, 15 May 2014 23:07:08 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20140516030708.GV27822@titan.lakedaemon.net>
References: <s5hvbt9izdm.wl%tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <s5hvbt9izdm.wl%tiwai@suse.de>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Metadata addendum to git commit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Takashi,

On Tue, May 13, 2014 at 03:25:57PM +0200, Takashi Iwai wrote:
> I think this has been already raised a few times, but I'm still
> dreaming one thing in our git management: having some metadata
> collection / link for each commit.
> 
> I don't mean for a thing like post-commit sign-off, but rather for
> tracking the information that has been revealed after commit, e.g. a
> regression the commit causes, the later fix commit, 

For the stuff flying by me, I've been adding the:

Fixes: <12-char hash>: ('Offending patch subject')

On patches fixing a regression.  It helps the stable team (when Cc
stable is also added) and in your scenario, you could grep the commits
for the result of your bisect.

> or a bugzilla or

Sorry, I don't use it.

> ML link for the further discussion or debugging session.

We've also been autogenerating a tag:

Link: https://lkml.kernel.org/r/<Message-Id>

For all patches that points to the email the patch came from.  Not
exactly what you were looking for, but nothing prevents someone from
replying to that thread a year later with a regression report.

I've also been contemplating adding

Coverletter: https://lkml.kernel.org/r/<First Reference Msg-Id>

for large series where the patch submitter has done a thorough writeup
in the coverletter.

thx,

Jason.
